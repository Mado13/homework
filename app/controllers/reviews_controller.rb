class ReviewsController < ApplicationController
  def new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    respond_to do |format|
      if @review.save
        format.html { redirect_to space_path(@booking.space) }
        format.json # Follow the classic Rails flow and look for a create.json view
        flash[:alert] = "Thank you for your review"
      else
        format.html { render '/dashboard' }
        format.json # Follow the classic Rails flow and look for a create.json view
        flash[:alert] = "Something went wrong."
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end
