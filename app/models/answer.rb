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

class Answer < ActiveRecord::Base
    belongs_to :user_project
    belongs_to :question
end
