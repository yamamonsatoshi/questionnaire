class AddTextToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :reverse, :boolean
  end
end
