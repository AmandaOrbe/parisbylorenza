class RestaurantsController < ApplicationController


  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]

  def chef

  end
  def top
    @top_restaurants = Restaurant.where(rating: 5)
  end

  def index
    if params[:food_type].blank?
      @restaurants = Restaurant.all
    else
      @restaurants = RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == params[:food_type]
      end
    end
  end

  def show

  end




  def new
    @restaurant = Restaurant.new
  end

  def create
  @restaurant = Restaurant.new(restaurant_params)
  if @restaurant.save
    redirect_to restaurants_path
  else
    render :new
  end

  end

  def edit

  end

  def update
def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])

  end


end
