class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :category, :difficulty, :correct_answer
  has_one :quiz
  has_many :incorrect_answers
end