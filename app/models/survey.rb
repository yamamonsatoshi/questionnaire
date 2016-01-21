# == Schema Information
#
# Table name: surveys
#
#  id         :integer          not null, primary key
#  name       :string
#  detail     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Survey < ActiveRecord::Base
    has_many :groups
    has_many :projects


    def get_group_sum(user_project)
      group_hash = {}
      self.groups.each do |group|
      	group_hash.merge!({group.name=>group.questions.map{|q| q.answers.find_by(user_project_id: user_project.id).val}})
      end
      out_hash = {}
      group_hash.each do |gh, ans_ary|
        out_hash.merge!({gh=>ans_ary.inject(:+)})
      end
      out_hash
    end
end
