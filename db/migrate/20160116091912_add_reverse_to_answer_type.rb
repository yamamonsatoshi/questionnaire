class AddReverseToAnswerType < ActiveRecord::Migration
  def change
    add_column :answer_types, :reverse, :integer
  end
end
