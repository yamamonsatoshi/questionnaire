class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :detail
      t.string :question_type

      t.timestamps null: false
    end
  end
end
