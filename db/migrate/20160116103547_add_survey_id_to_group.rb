class AddSurveyIdToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :survey_id, :integer
  end
end
