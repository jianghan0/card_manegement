class Card < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :title, presence: true
  validates :user_id, :uniqueness => { :scope => :company_id }
end
