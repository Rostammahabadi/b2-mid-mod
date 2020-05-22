class MoviesController < ApplicationController
  def show
    @movie = Movie.find("#{params[:movie_id]} = id")
    @actors = @movie.actors.sort_by{|actor|actor.age}
  end
end
