class AttemptSerializer < ActiveModel::Serializer
  attributes :id, :score
  has_one :user
  has_one :quiz
end
