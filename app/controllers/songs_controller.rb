class SongsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_song, only: %i[show update]

  def index
    @songs = Song.all

    render json: @songs,
           each_serializer: SongIndexSerializer
  end

  def show
    @song.update(views: @song.views + 1)

    render json: @song,
           serializer: SongShowSerializer
  end

  def create
    @song = Song.create(song_params)

    if @song.persisted?
      render json: @song
    else
      render json: @song.errors,
             status: :unprocessable_entity
    end
  end

  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors,
             status: :unprocessable_entity
    end
  end

  private

  def song_params
    params.require(:song).permit(:singer, :name, :genre_id,
                                 :lyrics, :translate, :linkUrl)
  end

  def set_song
    @song = Song.find_by(id: params[:id])

    head :unprocessable_entity unless @song
  end
end
