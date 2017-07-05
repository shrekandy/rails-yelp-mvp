class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }

  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, presence: true
end
