class CreateIncorrectAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :incorrect_answers do |t|
      t.string :a1
      t.string :a2
      t.string :a3
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
