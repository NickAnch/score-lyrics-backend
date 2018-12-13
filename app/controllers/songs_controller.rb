class SongsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :set_song, only: [:show, :update, :destroy]

  def index
    @songs = Song.all

    render json: @songs, each_serializer: SongIndexSerializer
  end

  def show
    render json: @song, each_serializer: SongShowSerializer
  end

  def create
    @song = Song.new(song_params)

    @song.save
    render json: @song
  end

  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @song.destroy
  end

  private

  def song_params
    params.require(:song).permit(:singer, :name, :lyrics, :translate, :linkUrl)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
