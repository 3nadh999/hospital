class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def self.generate(patient)
  	@p = patient.build_patient_account(number: Faker::Number.number(16))
  	@p.save
  end
 
  def self.generate(physician)

  	@phy = physician.build_patient_account(number: Faker::Number.number(16))
  	@phy.save
  end
end
