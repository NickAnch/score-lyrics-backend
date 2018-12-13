class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :username, :birthday, :gender, :avatar
end
