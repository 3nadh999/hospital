class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def generate_number_patient
  	@patient = Patient.find params[:id]
  	if Patient.generate(@patient)	
  		redirect_to patients_path
  	end
  end

  def generate_number_physician
  	@physician = Physician.find params[:id]
  	if Physician.generate(@physician)	
  		redirect_to physicians_path
  	end
  end
end
