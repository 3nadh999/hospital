# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times { |i|
	@p = Patient.create(name: Faker::Name.name,age: Faker::Number.between(0,120),phone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email)
	puts "@p.name patient created"
 }

 10.times { |i|
	@p = Physician.create(name: Faker::Name.name,age: Faker::Number.between(18, 80),experiance: Faker::Number.between(0,50))
	puts "@p.name patient created"
 }
                            