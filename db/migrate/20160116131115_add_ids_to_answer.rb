class AddIdsToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :project_id, :integer
    add_column :answers, :question_id, :integer
  end
end