require 'open-uri'
require 'json'

class SpacesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_all_spaces, only: [:index, :show]

  def index
  end

  def show
    @icons = {
      lock: 'fas fa-lock',
      monitor: 'fas fa-desktop',
      mouse: 'fas fa-mouse',
      keyboard: 'fas fa-keyboard',
      tea: 'fas fa-mug-hot',
      parking: 'fas fa-parking',
      shower: 'fas fa-shower',
      snacks: 'fas fa-cookie-bite',
      music: 'fab fa-napster',
      massage: 'fas fa-spa',
      peloton: 'fas fa-biking',
      toaster: 'fas fa-bread-slice',
      coffee: 'fas fa-coffee'
    }
    @markers = @spaces.geocoded.map do |space|
      {
        name: space.name,
        lat: space.latitude,
        lng: space.longitude
      }
    end
    @space = Space.find(params[:id])
    @user = User.find(@space.user_id)
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

  private

  def space_params
    params.require(:space).permit(:name, :description, :workspace_type, :price,
                                  :address, photos: [])
  end

  def set_all_spaces
    @spaces = Space.all
  end
end
