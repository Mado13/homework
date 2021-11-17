class IndexController < ApplicationController
  def index
    if params[:query].present?
      @spaces = Space.where(name: params[:query])
    else
      @spaces = Space.all
    end
  end
end
