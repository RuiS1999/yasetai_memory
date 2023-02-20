class Cook < ApplicationRecord
  belongs_to :user

  has_many :cook_comments,    dependent: :destroy
  has_many :cook_favorites,   dependent: :destroy

  has_many_attached :cook_images
end
