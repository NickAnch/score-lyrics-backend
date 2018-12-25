class SongShowSerializer < ActiveModel::Serializer
  attributes :singer, :name, :lyrics, :translate,
             :views, :linkUrl, :rating, :genre

  def genre
    object.genre.name
  end

  def rating
    {
      likes: object.ratings.where(mark: true).count,
      dislikes: object.ratings.where(mark: false).count
    }
  end
end
