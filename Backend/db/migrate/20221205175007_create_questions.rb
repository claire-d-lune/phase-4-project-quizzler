class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :type
      t.string :question
      t.string :difficulty
      t.string :correct_answer
      t.string :incorrect_answers

      t.timestamps
    end
  end
end
