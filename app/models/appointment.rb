class Appointment < ApplicationRecord
  belongs_to :patient, optional: true
  belongs_to :physician, optional: true

  validates :a_date, :fee, :physician_id,:patient_id, presence: true

end

