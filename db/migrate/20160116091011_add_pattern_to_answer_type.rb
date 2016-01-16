class AddPatternToAnswerType < ActiveRecord::Migration
  def change
    add_column :answer_types, :pattern, :string
  end
end
