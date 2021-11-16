class UsersController < ApplicationController
  attr_accessor :address

  def new
    @user = User.new
  end

  def create
  end

  def owner
  end
end
