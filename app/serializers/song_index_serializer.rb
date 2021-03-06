class SongIndexSerializer < ActiveModel::Serializer
  attributes :id, :singer, :name, :genre, :rating, :views
  belongs_to :author, serializer: UserSerializer

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
