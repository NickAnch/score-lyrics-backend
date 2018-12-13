class SongIndexSerializer < ActiveModel::Serializer
  attributes :singer, :name, :genre
end
