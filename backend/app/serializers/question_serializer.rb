class QuestionSerializer < ActiveModel::Serializer
  attributes :id,:question, :category, :difficulty, :correct_answer, :quiz_id
  # has_one :quiz
  has_many :incorrect_answers
end