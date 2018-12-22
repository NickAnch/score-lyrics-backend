class SongIndexSerializer < ActiveModel::Serializer
  attributes :singer, :name, :genre, :rating

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
