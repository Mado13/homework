require 'open-uri'
require 'json'

class SpacesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_all_spaces, only: [:index, :show]

  def index
    if params[:query]
      @spaces = Space.search_by_address_and_wrokspace_type(params[:query])
    else
      @spaces = Space.all
    end
  end

  def show
    @space = Space.find(params[:id])
    @user = User.find(@space.user_id)
    @markers = @space.geocode.map do
      {
        lat: @space.latitude,
        lng: @space.longitude
      }
    end
    @booking = Booking.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.amenities = params["amenities"]["amenities"].join(" ")
    @space.save!
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to dashboard_path, notice: 'Space was successfully deleted!'
  end

  private

  def space_params
    params.require(:space).permit(:name, :description, :workspace_type, :price,
                                  :address, photos: [])
  end

  def set_all_spaces
    @spaces = Space.all
  end
end
