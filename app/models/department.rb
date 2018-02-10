class Department < ApplicationRecord
	has_and_belongs_to_many :physicians
	has_and_belongs_to_many :patients
end
