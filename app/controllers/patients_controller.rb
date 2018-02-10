class PatientsController < ApplicationController
  def index
    if !params[:search].blank? 
      @p=Patient.where("name LIKE ? OR age LIKE ? OR phone LIKE ? OR gender LIKE ? OR department LIKE ? OR email LIKE ?  " , "%#{params[:search]}%", "%#{params[:search]}%" , "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @p = Patient.all
    end 
    $status = 0
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
    else 
      render 'new'
    end
  end

  def update
     @p=Patient.find params[:id]
     
     if params[:search]
         @e = @p.pictures.create(name: params[:search])
         if @e.errors.any?
            $status = 0
         else 
            $status = 1
         end  
        redirect_to patient_path(@p)

     else @p.update_attributes(patient_params)
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
    params.require(:patient).permit(:name,:age,:email,:phone,:gender,:department)
  end
end
