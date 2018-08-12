# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  address    :string           not null
#  name       :string(32)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  has_many :cards
  has_many :users, through: :cards

  validates :name, presence: true, length: { maximum: 32 }
  validates :address, presence: true
end
