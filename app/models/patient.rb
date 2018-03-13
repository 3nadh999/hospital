class Patient < ApplicationRecord
	has_many :appointments
	has_many :physicians, through: :appointments
	has_and_belongs_to_many :departments
	has_one :patient_account , :dependent => :destroy
	has_many :comments, as: :person
	has_many :pictures, as: :imageable , dependent: :destroy
	accepts_nested_attributes_for :pictures , allow_destroy: true, reject_if: proc {|attr| att['name'].blank?}

	#validates :email, :uniqueness => true
	#validates :email,:name,:gender,:age,:phone, presence: true
end
