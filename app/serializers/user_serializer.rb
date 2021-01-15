class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :name, :pronouns, :bio, :avatar
  has_many :thoughts
end
