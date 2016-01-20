# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  name           :string
#  detail         :text
#  question_type  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  answer_type_id :integer
#  group_id       :integer
#  reverse        :boolean
#

class Question < ActiveRecord::Base
    belongs_to :group
    belongs_to :answer_type

    has_many :answers
end
