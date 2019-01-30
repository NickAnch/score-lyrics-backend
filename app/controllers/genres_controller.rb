class GenresController < ApplicationController
  def index
    @genres = Genre.all

    render json: @genres,
           each_serializer: GenreIndexSerializer
  end
end
