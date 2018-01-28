class Appointment < ApplicationRecord
  belongs_to :patient, optional: true
  belongs_to :physician, optional: true
end
