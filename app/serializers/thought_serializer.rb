class ThoughtSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :content, :sentiment, :tags, :emotion, :date
  belongs_to :user
  has_many :letters
end
