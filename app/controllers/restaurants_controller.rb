class RestaurantsController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_user
  #before_action :validate_user
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = User.find(params[:user_id]).restaurants.all    #@restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
 @restaurant = current_user.restaurants.find(params[:id])
  end
def new
   @restaurant = Restaurant.new
 end
 def edit
 @restaurant = current_user.restaurants.find(params[:id])
end
  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = @user.restaurants.new(restaurant_params)
    #restaurant = params[:restaurant]
      #@restaurant = current_user.restaurants.create(name: restaurant[:name], address: restaurant[:address], city: restaurant[:city])
       # redirect_to user_restaurants_path(current_user)
      #end
      

   respond_to do |format|
     if @restaurant.save
      format.html { redirect_to user_restaurants_path(current_user), notice: 'Restaurant was successfully created.' }
       format.json { render :show, status: :created, location: @restaurant }
      else
       format.html { render :new }
       format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def validate_user
    #throw @user 
   # redirect_to localhost:3000/users/User.find(params[:user_id])/restaurants
    if user_sign_in?
    redirect_to  users_path if current_user != @user
   # redirect_to localhost:3000/users/User.find(params[:user_id])/restaurants
    end
  end
  def set_user
    @user = User.find(params[:user_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :city)
    end
end
