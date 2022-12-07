class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :format
      t.string :question
      t.string :difficulty
      t.string :correct_answer
      t.belongs_to :quiz, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
