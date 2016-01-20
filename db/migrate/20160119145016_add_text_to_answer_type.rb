class AddTextToAnswerType < ActiveRecord::Migration
  def change
    add_column :answer_types, :content, :text
  end
end
