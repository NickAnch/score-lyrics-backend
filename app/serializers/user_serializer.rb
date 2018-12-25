class UserSerializer < ActiveModel::Serializer
  attributes :username, :birthday, :gender, :avatar

  def avatar
    rails_blob_path(object.avatar, only_path: true) if object.avatar.attached?
  end
end
