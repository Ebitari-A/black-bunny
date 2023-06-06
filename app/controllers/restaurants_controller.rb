class RestaurantsController < ApplicationController

  def create
    @restaurant = Restaurant.new
    @restaurant.save
  end
end
