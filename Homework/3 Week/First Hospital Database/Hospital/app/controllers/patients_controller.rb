class PatientsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy, :sell_car, :reserve, :reneg]

  def show
  	@patient = Patient.find params[:id]
  end

  def new
  	@patient = Patient.new
  end

  def create
  	@patients = Patient.create patient_params
  	redirect_to root_path
  end

  def edit
  	@patients = Patient.find params[:id]
  end

  def update
  	@patients = Patient.find params [:id]
  	@patient.update_attributes patient_params
  	redirect_to root_path
  end

  def destroy
  	@patients = Patient.find params [:id]
  	@patient.delete
  	redirect_to root_path
  end

private

  def set_patient
    @patient = Patient.find(params[:id])
  end

	def patient_params
		params.require(:patient).permit(:first_name, :last_name, :DOB, :gender, :description)
	end
end
