class DrinksController < ApplicationController
  before_action :find_drink, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.create drinks_params
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
private

  def find_drink
  end

  def drinks_params
    params.require(:drink).permit(:name, :cost)
  end
end
