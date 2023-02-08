class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  generate_public_uid

  has_many :posts,              dependent: :destroy
  has_many :post_comments,      dependent: :destroy
  has_many :post_favorites,     dependent: :destroy
  has_many :cooks,              dependent: :destroy
  has_many :cook_comments,      dependent: :destroy
  has_many :cook_favorites,     dependent: :destroy
  has_many :tranings,           dependent: :destroy



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
end
