class Offer < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo
end
