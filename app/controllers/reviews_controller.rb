class ReviewsController < ApplicationController


  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @movie = Movie.find(params[:movie_id])
    @review.movie = @movie
    if @review.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      redirect_to movies_path
    end
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
