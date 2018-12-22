class SongShowSerializer < ActiveModel::Serializer
  attributes :singer, :name, :genre, :lyrics,
             :translate, :views, :linkUrl, :rating

  def genre
    {
      id: object.genres.id,
      name: object.genres.name
    }
  end

  def rating
    {
      likes: object.ratings.where(mark: true).count,
      dislikes: object.ratings.where(mark: false).count
    }
  end
end
