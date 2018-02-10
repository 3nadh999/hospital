class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    else 
      render 'new' 
    end
  end

  def index
    
    if params[:name]=="physician"
     @appointments = Appointment.where({physician_id: params[:id]})
    elsif params[:name]=="patient"
     @appointments = Appointment.where({patient_id: params[:id]})
   else
    @appointments=Appointment.all
   end  

    
    if !params[:search].blank? && !params[:date].blank?
      @appointments=Appointment.where("a_date LIKE ? AND fee LIKE ?  " , "%#{params[:date]}%", "%#{params[:search]}%")
    elsif !params[:search].blank?  
      @appointments=Appointment.where(" fee LIKE ?  " , "%#{params[:search]}%")
    elsif !params[:date].blank?
       @appointments=Appointment.where("a_date LIKE ?" , "%#{params[:date]}%")

      
    end 
  end

  



  def edit
    @appointment = Appointment.find params[:id]
  end

  def update
    @appointment=Appointment.find params[:id]
    if @appointment.update_attributes(appointment_params)
      redirect_to appointments_path
    end
  end

  def destroy
     @appointment=Appointment.find params[:id]
     if @appointment.delete
      redirect_to appointments_path
    end
  end

  def show
    @appointment=Appointment.find params[:id]
  end

private 
  def appointment_params
    params.require(:appointment).permit(:a_date,:physician_id,:patient_id,:fee)
  end
end
