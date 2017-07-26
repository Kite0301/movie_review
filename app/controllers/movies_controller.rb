class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def search
    if params[:search_word] == ''
      @movies = Movie.all
    else
      @movies = Movie.where(title: params[:search_word])
    end
    render('movies/index')
  end
end
