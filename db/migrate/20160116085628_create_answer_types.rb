class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
