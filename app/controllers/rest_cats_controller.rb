class RestCatsController < ApplicationController
  before_action :set_rest_cat, only: [:show, :edit, :update, :destroy]

  # GET /rest_cats
  # GET /rest_cats.json
  def index
    @rest_cats = RestCat.all
  end

  # GET /rest_cats/1
  # GET /rest_cats/1.json
  def show
  end

  # GET /rest_cats/new
  def new
    @rest_cat = RestCat.new
  end

  # GET /rest_cats/1/edit
  def edit
  end

  # POST /rest_cats
  # POST /rest_cats.json
  def create
    @rest_cat = RestCat.new(rest_cat_params)

    respond_to do |format|
      if @rest_cat.save
        format.html { redirect_to @rest_cat, notice: 'Rest cat was successfully created.' }
        format.json { render :show, status: :created, location: @rest_cat }
      else
        format.html { render :new }
        format.json { render json: @rest_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rest_cats/1
  # PATCH/PUT /rest_cats/1.json
  def update
    respond_to do |format|
      if @rest_cat.update(rest_cat_params)
        format.html { redirect_to @rest_cat, notice: 'Rest cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @rest_cat }
      else
        format.html { render :edit }
        format.json { render json: @rest_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rest_cats/1
  # DELETE /rest_cats/1.json
  def destroy
    @rest_cat.destroy
    respond_to do |format|
      format.html { redirect_to rest_cats_url, notice: 'Rest cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rest_cat
      @rest_cat = RestCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rest_cat_params
      params.require(:rest_cat).permit(:rsetaurant_id, :category_id)
    end
end
