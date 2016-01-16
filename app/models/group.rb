# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :integer
#

class Group < ActiveRecord::Base
    belongs_to :survey
    has_many :questions
end
