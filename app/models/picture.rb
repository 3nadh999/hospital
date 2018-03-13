class Picture < ApplicationRecord
	belongs_to :imageable, polymorphic: true

	validates :name, presence: true
	belongs_to :patient , optional:true
end
