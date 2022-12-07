class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.integer :author_id


      t.timestamps
    end
  end
end
