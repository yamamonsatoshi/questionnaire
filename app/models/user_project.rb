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

class UserProject < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  
  has_many :answers
end
