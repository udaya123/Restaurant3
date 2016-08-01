class UsersController < ApplicationController
  def index
    @users = User.all
    end  #@restaurants = Restaurant.all
end
