class Post < ApplicationRecord
  belongs_to :user

  has_many :post_comments,    dependent: :destroy
  has_many :post_favorites,   dependent: :destroy
  has_many :post_hashes,      dependent: :destroy
  has_many :hashtags,         through: :post_hashes

  has_many_attached :post_images

  # ハッシュタグ
  after_create do
    post = Post.find_by(id: id)
    # hash_bodyに打ち込まれたハッシュタグを検出
    hashtags = hash_body.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      # ハッシュタグは先頭の#を外した上で保存
      tag = Hashtag.find_or_create_by(hash_name: hashtag.downcase.delete('#'))
      post.hashtags << tag
    end
  end
  #更新アクション
  before_update do
    post = Post.find_by(id: id)
    post.hashtags.clear
    hashtags = hash_body.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(hash_name: hashtag.downcase.delete('#'))
      post.hashtags << tag
    end
  end
end
