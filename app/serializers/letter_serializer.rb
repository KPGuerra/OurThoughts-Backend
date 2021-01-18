class LetterSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :thought_id, :content
  belongs_to :user
  belongs_to :thought
end
