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
end
