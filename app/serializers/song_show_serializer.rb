class SongShowSerializer < ActiveModel::Serializer
  attributes :singer, :name, :lyrics, :translate, :views, :linkUrl
end
