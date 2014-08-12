class BuildingsController < ApplicationController

  def new
    @building = Building.new
  end

  def create
    @building = Building.create building_params
    redirect_to root_path
  end


  private

  def building_params
    params.require(:building).permit(:name)
     
   end 

end
