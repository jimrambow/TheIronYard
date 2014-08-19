class BuildingsController < ApplicationController

  def new
    @building = Building.new
  end

  def create
    @building = Building.create building_params
    redirect_to root_path
  end

  def edit
    @building = Building.find params[:id]
  end

  def update
    @building = Building.find params[:id]
    @building.update_attributes building_params
    redirect_to root_path
  end

  def destroy
    @building = Building.find params [:id]
    @building.delete
    redirect_to root_path
  end

  private

  def building_params
    params.require(:building).permit(:name)
     
   end 

end
