class HospitalsController < ApplicationController
  before_action :find_hospital, only: [:show, :edit, :update, :destroy]
  def index
    @hospitals = Hospital.all
  end
  def new
    @hospital = Hospital.new
  end
  def create
    @hospital = Hospital.create hospital_params
    if @hospital.save == true
      redirect_to hospital_path(@hospital)
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @hospital.update_attributes hospital_params
      redirect_to hospital_path(@hospital)
    else 
      render :edit
    end  
  end
  def show
    @hospital = Hospital.find params[:id]
    @doctor = @hospital.doctors.new
  end
  def destroy
    @hospital.delete
    redirect_to hospital_path(@hospital)
  end
  def create_doctor
    @hospital = Hospital.find params[:id]
    @hospital.doctors.create doctor_params
    redirect_to @hospital
  end

  def delete_doctor
    @hospital = Hospital.find params[:id]
    @doctor = Doctor.find params[:doctor_id]
    @doctor.delete
    redirect_to @hospital
  end
  private
    def find_hospital
      @hospital = Hospital.find params[:id]
    end
    def hospital_params
      params.require(:hospital).permit(:name, :description, :capacity)
    end
    def doctor_params
      params.require(:doctor).permit(:name, :speciality)
    end
end
