class MoviesController < ApplicationController

  def show
  @movie = Movie.find_by(id: params[:id])
  render :show
  end

  def index
  @movies = Movie.all
  render :index
  end

  def create
    @movie = Movie.new(
    title: params[:title],
    actor: params[:actor],
    year: params[:year])
    @movie.save
    render :show
  end
  
  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movies.title
    @movie.actor = params[:actor] || @movies.actor
    @movie.year = params[:year] || @movies.year
    @movie.save
    render :show
  end
  
  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Movie has been successfully deleted"}
  end
end
