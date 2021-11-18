class IndexController < ApplicationController
  def index
    @space = Space.all
  end
end
