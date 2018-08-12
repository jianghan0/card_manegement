# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  department :string
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer
#  user_id    :integer
#
# Indexes
#
#  index_cards_on_company_id  (company_id)
#  index_cards_on_user_id     (user_id)
#

class Card < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :title, presence: true
  validates :user_id, :uniqueness => { :scope => :company_id }
end
