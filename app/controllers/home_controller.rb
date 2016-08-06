class HomeController < ApplicationController
  def index
    redirect_to user_restaurants_path(current_user)
  end
end
