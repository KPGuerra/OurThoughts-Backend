class LetterSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :thought_id, :content, :like
end
