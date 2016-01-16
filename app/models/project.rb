# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :integer
#

class Project < ActiveRecord::Base
    has_many :user_projects
    has_many :users, through: :user_projects
    
    belongs_to :survey
end
