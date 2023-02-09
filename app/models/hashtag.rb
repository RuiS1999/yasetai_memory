class Hashtag < ApplicationRecord
  has_many :post_hashes,  dependent: :destroy
  has_many :posts,        through: :post_hashes

  validates :hash_name,  presence: true
end
