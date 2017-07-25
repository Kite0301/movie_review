class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def reviews
    @movie = Movie.find_by(id: params[:id])
  end

  def search
    @movies = Movie.all
    render 'movies/index'
  end
end
