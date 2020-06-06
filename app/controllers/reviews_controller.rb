class ReviewsController < ApplicationController
  def index
    @hotel = Hotel.find(params[:hotel_id])
    @reviews = @hotel.reviews
    
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @review = @hotel.reviews.build
  end

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.new(review_params)
    
    if @review.save
      redirect_to hotel_review_path(@hotel,@review)
    end
  
  end

  def review_params
    params.require(:review).permit(:name, :title, :body, :value, :hotel_id)
  end
  
  def show
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.find(params[:id])
  end


end
