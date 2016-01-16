# == Schema Information
#
# Table name: answer_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pattern    :string
#  reverse    :integer
#

require 'test_helper'

class AnswerTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
