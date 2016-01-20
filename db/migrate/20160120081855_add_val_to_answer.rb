class AddValToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :val, :integer
  end
end
