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

class AnswerType < ActiveRecord::Base
    has_many :questions
end
