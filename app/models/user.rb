class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,              dependent: :destroy
  has_many :post_comments,      dependent: :destroy
  has_many :post_favorites,     dependent: :destroy
  has_many :cooks,              dependent: :destroy
  has_many :cook_comments,      dependent: :destroy
  has_many :cook_favorites,     dependent: :destroy
  has_many :tranings,           dependent: :destroy

  # 画像
  has_one_attached :profile_image

  # フォローする側から中間テーブルへのアソシエーション
  has_many :follows, foreign_key: :following_id
  # フォローされる側から中間テーブルへのアソシエーション
  has_many :reverse_of_follows, class_name: "Follow", foreign_key: :follower_id

  # フォローする側からフォローされたユーザを取得する
  has_many :followings, through: :follows, source: :follower
  # フォローされる側からフォローしているユーザを取得する
  has_many :followers, through: :reverse_of_follows, source: :following

  # フォローしているか判定
  def is_followed_by?(user)
    reverse_of_follows.find_by(following_id: user.id).present?
  end

  # プロフィール画像正方形にする
  def get_profile_image
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/default_image.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(gravity: "center", resize:"300x300^", crop:"300x300+0+0").processed
  end

  # 性別enum
  enum sex:    { male: 0, female: 1, other: 2 }
end
