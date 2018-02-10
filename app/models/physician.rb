class Physician < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	has_and_belongs_to_many :departments
	has_one :patient_account
  has_many :pictures,as: :imageable

	validates :name,:age,:experiance, presence: true
	validate :validate_age

  	private

  	def validate_age
      if age < 18 
          errors.add(:age, 'Are u Doctor finished your degree before 18 years ')
      end

      if experiance > 75
      	  errors.add(:experiance, 'No Physician will live with experiance above 75')
  	  end
  	end 
end
