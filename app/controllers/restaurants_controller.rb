class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

def show
  @restaurant = Restaurant.find(params[:id])
  @reviews = @restaurant.reviews
end

def new
  @restaurant = Restaurant.new(params[:restaurant])
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save
  redirect_to @restaurant, notice: "A new restaurant was created"
end

  private

def restaurant_params
 params.require(:restaurant).permit(:id, :name, :address, :category)
end
end


