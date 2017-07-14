class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def reviews
    @movie = Movie.find_by(id: params[:id])
    @current_user_review = @current_user.review_for(@movie)
  end

  def search
    @movies = Movie.all
    render 'movies/index'
  end
end
