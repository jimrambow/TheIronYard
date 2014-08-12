class PatientsController < ApplicationController

  before_action :find_patient, only: [:show, :edit, :update, :destroy, :transition]

  before_action :find_facility

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
    @medications = Medication.all
  end

  def create
    @patient = @facility.patients.create patient_params
    if @patient.save == true
      redirect_to facility_patients_path(@facility)
    else
      render :new
    end
  end

  def edit
    @medications = Medication.all
  end

  def update
    if @patient.update_attributes patient_params
      redirect_to facility_patient_path(@facility, @patient)
    else
      render :edit
    end
  
  end

  def destroy
    @patient.destroy
    redirect_to facility_patients_path(@facility)
  end
 
  def transition
    event = params[:event]
    @patient.send(event.to_sym)
    redirect_to facility_patients_path(@facility, @patient)
  end

private

  def find_patient
    @patient = Patient.find params[:id]
    
  end

  def find_facility
    @facility = Facility.find params[:facility_id]
  end

  def patient_params
    params.require(:patient).permit(:lastname, :firstname, :description, :dob, :gender, {medication_ids: []})

  end
end