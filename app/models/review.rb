class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }, numericality: { only_integer: true }
  validates :rating, presence: true
  validates :content, presence: true
end
