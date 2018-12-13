class UserSerializer < ActiveModel::Serializer
  attributes :username, :birthday, :avatar
end
