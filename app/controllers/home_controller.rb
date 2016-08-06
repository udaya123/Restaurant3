class HomeController < ApplicationController
  def index
   if user_signed_in?  
    redirect_to user_restaurants_path(current_user)
   else
   redirect_to new_user_session_path 
   end
end
end
