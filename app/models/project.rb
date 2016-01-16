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
    
    
    def get_due_date(user_id)
        up = UserProject.find_by(user_id: user_id, project_id: self.id)
        up.due_date
    end
    
    def get_is_complete(user_id)
        up = UserProject.find_by(user_id: user_id, project_id: self.id)
        up.is_complete
    end
end
