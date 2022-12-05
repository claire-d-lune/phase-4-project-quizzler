class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :category, :difficulty, :correct_answer, :incorrect_answer
end
