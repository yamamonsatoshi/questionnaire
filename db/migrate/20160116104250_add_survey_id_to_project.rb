class AddSurveyIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :survey_id, :integer
  end
end
