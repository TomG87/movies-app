class MoviesController < ApplicationController

  def show
  @movie = Movie.find_by(id: params[:id])
  render :show
  end

  def index
  @movies = Movie.all
  render :index
  end
end
