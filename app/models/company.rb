class Company < ApplicationRecord
  has_many :cards
  has_many :users, through: :cards

  validates :name, presence: true, length: { maximum: 32 }
  validates :address, presence: true
end
