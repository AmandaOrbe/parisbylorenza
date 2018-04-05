class RestaurantsController < ApplicationController

    # fake DB

  def index
    if params[:food_type].blank?
      @restaurants = Restaurant.all
    else
      @restaurants = RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == params[:food_type]
      end
    end
  end

  def create
    raise
    puts "todo: create the restaurant"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
