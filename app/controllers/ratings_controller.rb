class RatingsController < ApplicationController
  before_action :find_song

  def create
    @rating = @song.ratings.find_or_create_by(user_id: current_user.id)
    @rating.update(rating_params)

    if @rating.persisted?
      render json: @rating
    else
      render json: @rating.errors,
             status: :unprocessable_entity
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:mark)
  end

  def find_song
    @song = Song.find_by(id: params[:song_id])
  end
end
