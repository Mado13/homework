class DashboardsController < ApplicationController
  def show
    @spaces = current_user.spaces
    @bookings = current_user.bookings
    @review = Review.new
  end
end
