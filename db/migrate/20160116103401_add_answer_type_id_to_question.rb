class AddAnswerTypeIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :answer_type_id, :integer
  end
end
