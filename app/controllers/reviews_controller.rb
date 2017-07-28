class ReviewsController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]
  before_action :set_review, only: [:edit, :update, :destroy]

  def index
    @movie = Movie.find_by(id: params[:movie_id])
    @reviews = Review.where(movie_id: @movie.id)
                     .paginate(page: params[:page], :per_page => 20)
  end

  def new
    @review = Review.new(movie_id: params[:movie_id])
  end

  def create
    @review = Review.new(
      movie_id: params[:movie_id],
      user_id: @current_user.id,
      point: params[:point].to_i,
      content: params[:content]
    )

    if @review.save
      flash[:notice] = "「#{@review.movie.title}」を評価しました"
      redirect_to("/movies/#{@review.movie.id}/reviews")
    else
      render('reviews/new')
    end
  end

  def edit
  end

  def update
    @review.point = params[:point].to_i
    @review.content = params[:content]

    if @review.save
      flash[:notice] = "「#{@review.movie.title}」の評価を更新しました"
      redirect_to("/movies/#{@review.movie.id}/reviews")
    else
      render('reviews/edit')
    end
  end

  def destroy
    @review.destroy
    flash[:notice] = "「#{@review.movie.title}」の評価を削除しました"
    redirect_to("/movies/#{@review.movie.id}/reviews")
  end

  def set_review
    @review = Review.find_by(id: params[:id])
  end
end
