class FacilitiesController < ApplicationController

 before_action :find_facility, only: [:show, :edit, :update, :destroy]

  def index
    @facilities = Facility.all
  end

  def show
    
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.create facility_params
    if @facility.save == true
      redirect_to facility_params
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @facility.update_attributes facility_params
      redirect_to facilities_path
    else
      render :edit
    end
  end

private

  def find_facility
    @facility = Facility.find params[:id]
  end

  # def find_ward
  #   @ward = Ward.find params[:ward_id]
  # end

  def facility_params
    params.require(:facility).permit(:name, :description, :bed)
  end

end
