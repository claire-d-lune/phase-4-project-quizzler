class AttemptSerializer < ActiveModel::Serializer
  attributes :id, :score, :quiz_id, :user_id
  has_one :user
  has_one :quiz
end
