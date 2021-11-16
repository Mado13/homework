class BookingsController < ApplicationController
  def show
  end

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.space = @space
    if @booking.save
      redirect_to receipt_path(@space, @booking), notice: "Booking was successful ✨"
    else
      raise
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def receipt
    @space = Space.find(params[:space_id])
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :space_id)
  end
end
