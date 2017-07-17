class RestaurantsController < ApplicationController
  before_filter :authorize

  def new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    @restaurant.user = current_user
    if @restaurant.save
      flash[:success] = "Restaurant saved successfully."
      redirect_to root_path
    else
      flash[:danger] = "Something went wrong! Your restaurant was not saved. Please try again."
      redirect_to new_restaurant_path
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :cuisine, :city, :state, :zip)
  end
end
