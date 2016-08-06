class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    redirect_to restaurant
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to restaurant, notice: 'Logged In'
    else
      render :new
    end
    
   end
      
       
