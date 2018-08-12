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

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
