class AddGroupIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :group_id, :integer
  end
end
