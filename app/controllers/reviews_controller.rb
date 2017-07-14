class ReviewsController < ApplicationController
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
    @review = Review.find_by(
      user_id: @current_user.id,
      movie_id: params[:movie_id],
    )
  end

  def update
    @review = Review.find_by(
      user_id: @current_user.id,
      movie_id: params[:movie_id],
    )
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
    @review = Review.find_by(
      user_id: @current_user.id,
      movie_id: params[:movie_id],
    )
    @review.destroy
    movie = Movie.find_by(id: params[:movie_id])
    flash[:notice] = "「#{movie.title}」の評価を削除しました"
    redirect_to("/movies/#{movie.id}/reviews")
  end
end
