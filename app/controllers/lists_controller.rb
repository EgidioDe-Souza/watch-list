class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@list)
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new 
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to restaurants_path
  end
  
  private

  def list_params
    params.require(:list).permit(:name)
  end

end
