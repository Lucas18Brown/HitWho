class ReviewsController < ApplicationController
  before_action :set_hitman

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @hitman = Hitman.find(params[:hitman_id])
    @review.booking = @booking
    if @review.save
      redirect_to hitman_path(@hitman)
   else
    @review = Review.new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to hitman_path(@review.hitmen)
  end

  private

  def set_hitman
    @hitman = Hitman.find(params[:hitman_id])

  end


  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end
