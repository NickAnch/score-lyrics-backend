class SongsController < ApplicationController
  def index
    @songs = Song.all

    render json: @songs
  end

  def create
    @song = song.new(song_params)

    @song.save
    render json: @song
  end

  def destroy
    @song = Song.where(id: params[:id]).first
    @song.destroy
  end

  private

  def song_params
    params.require(:song).permit(:singer, :name, :lyrics)
  end
end
