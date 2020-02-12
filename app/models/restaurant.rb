class Restaurant < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews should be destroyed as well
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
