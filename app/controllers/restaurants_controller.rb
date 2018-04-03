class RestaurantsController < ApplicationController

    # fake DB
    RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }
  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
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
