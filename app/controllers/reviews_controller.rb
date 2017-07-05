class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant #what does this mean?
    @review.save
    if @review.save # =true
      redirect_to restaurant_path(@restaurant)
    else
      render :new  #render means make in English
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end


end
