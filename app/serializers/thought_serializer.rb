class ThoughtSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :content, :category, :tags
  belongs_to :user
  has_many :letters
end
