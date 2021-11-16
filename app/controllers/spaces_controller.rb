require 'open-uri'
require 'json'

class SpacesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
    @user = User.find(@space.user_id)
    geo_url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{@space.city},#{@space.country}.json?access_token=pk.eyJ1IjoibWFkbzEzIiwiYSI6ImNrdzF3dWxsNjBhNzUyb3BhZDk4bHI1ZW8ifQ.Y7Ctk5-sMRJf1VbQGa0Y_g"
    serialized = URI.open(geo_url).read
    @map = JSON.parse(serialized)
    long = @map["features"][0]["center"][0]
    lang = @map["features"][0]["center"][1]
    @map_url = "https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/#{long},#{lang},11,0/500x300@2x?access_token=pk.eyJ1IjoibWFkbzEzIiwiYSI6ImNrdzF3dWxsNjBhNzUyb3BhZDk4bHI1ZW8ifQ.Y7Ctk5-sMRJf1VbQGa0Y_g"
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.amenities = params["amenities"]["amenities"]
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
                                  :city, :country, :street, :street_number)
  end
end
