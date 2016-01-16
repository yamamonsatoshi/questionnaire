class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name
      t.text :detail
      t.string :answer_type

      t.timestamps null: false
    end
  end
end
