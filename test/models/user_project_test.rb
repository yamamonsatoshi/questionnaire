# == Schema Information
#
# Table name: user_projects
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  project_id  :integer
#  is_complete :boolean
#  due_date    :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class UserProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
