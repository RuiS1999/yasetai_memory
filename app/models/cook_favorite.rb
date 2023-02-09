class CookFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :cook
end
