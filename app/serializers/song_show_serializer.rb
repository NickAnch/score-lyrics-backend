class SongShowSerializer < ActiveModel::Serializer
  attributes :singer, :name, :genre, :lyrics,
             :translate, :views, :linkUrl
end
