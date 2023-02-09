class Cook < ApplicationRecord
  belongs_to :user

  has_many :cook_comments,    dependent: :destroy
  has_many :cook_favorites,   dependent: :destroy
end
