class MovieGenresController < ApplicationController
  def create
    moviegenre = Moviegenre.new(
    movie_id: params["movie_id"],
    genre_id: params["genre_id"]
  end
end
