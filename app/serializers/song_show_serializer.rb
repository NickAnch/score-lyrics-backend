class SongShowSerializer < ActiveModel::Serializer
  attributes :id, :singer, :name, :lyrics, :translate,
             :views, :linkUrl, :rating, :genre_name, :vote
  belongs_to :author, serializer: UserSerializer

  def genre_name
    object.genre.name
  end

  def vote
    object.ratings.find_by(user_id: current_user&.id)
  end

  def rating
    {
      likes: object.ratings.where(mark: true).count,
      dislikes: object.ratings.where(mark: false).count
    }
  end
end
