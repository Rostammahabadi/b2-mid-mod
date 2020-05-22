class MoviesController < ApplicationController
  def show
    @movie = Movie.find("#{params[:movie_id]} = id")
    @actors = @movie.actors.sort_by{|actor|actor.age}
  end

  def update
    actor1 = Actor.find_by name: "#{params[:name]}"
    @movie = Movie.find("#{params[:movie_id]} = id")
    if actor1.nil?
      flash[:notice] = "Actor not in database"
      redirect_to "/movies/#{params[:movie_id]}"
    else
      @movie.actors << actor1
      redirect_to "/movies/#{params[:movie_id]}"
    end
  end

end
