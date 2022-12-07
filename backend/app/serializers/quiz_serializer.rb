class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url
  has_many :questions
end
