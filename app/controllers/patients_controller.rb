class PatientsController < ApplicationController
  def index
    @p = Patient.all
  end

  def show
     @p=Patient.find params[:id]
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
     @p=Patient.find params[:id]
     if @p.update_attributes(patient_params)
        redirect_to patients_path
     end
  end

  def edit
    @p=Patient.find params[:id]
  end

  def destroy
    @p=Patient.find params[:id]

    if @p.delete
      redirect_to patients_path
    end
  end


private 
  def patient_params
    params.require(:patient).permit(:name,:age,:email,:phone,:gender)
  end
end
