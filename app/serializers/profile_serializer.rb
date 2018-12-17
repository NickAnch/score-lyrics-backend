class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :birthday, :gender, :avatar
end
