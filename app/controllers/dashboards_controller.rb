class DashboardsController < ApplicationController
  def show
    @spaces = current_user.spaces
    @bookings = current_user.bookings
    @review = Review.new
    #@booking = Booking.find(params[:booking_id])
  end
end
