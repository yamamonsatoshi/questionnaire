# == Schema Information
#
# Table name: answers
#
#  id              :integer          not null, primary key
#  name            :string
#  detail          :text
#  answer_type     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  project_id      :integer
#  question_id     :integer
#  user_project_id :integer
#  val             :integer
#

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
