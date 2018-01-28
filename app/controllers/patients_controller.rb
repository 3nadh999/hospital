class PatientsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @p = Patient.new
  end

  def create
     @p = Patient.new(patient_params)
    if @p.save
      redirect_to patients_path
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end


private 
  def patient_params
    params.require(:patient).permit(:name,:age,:email,:phone,:gender)
  end
end
