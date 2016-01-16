class AddUpIdsToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :user_project_id, :integer
  end
end
