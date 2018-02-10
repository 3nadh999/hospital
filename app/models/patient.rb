class Patient < ApplicationRecord
	has_many :appointments
	has_many :physicians, through: :appointments
	has_and_belongs_to_many :departments
	has_one :patient_account , :dependent => :destroy
	has_many :pictures, as: :imageable

	#validates :email, :uniqueness => true
	#validates :email,:name,:gender,:age,:phone, presence: true
end
