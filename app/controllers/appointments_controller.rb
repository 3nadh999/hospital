class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    end
  end

  def index
    @appointments = Appointment.all
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
    params.require(:appointment).permit(:a_date,:physician_id,:patient_id)
  end
end
