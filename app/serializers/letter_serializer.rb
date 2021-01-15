class LetterSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :thought_id, :content, :like
  belongs_to :user
  belongs_to :thought
end
