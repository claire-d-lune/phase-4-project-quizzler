class IncorrectAnswerSerializer < ActiveModel::Serializer
  attributes :id, :a1, :a2, :a3
  has_one :question
end
