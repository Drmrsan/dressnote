# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times do

  name  		= Faker::Name.name
  homenum 		= Faker::PhoneNumber.phone_number
  mobnum  		= Faker::PhoneNumber.cell_phone
  adress		= Faker::Address.street_address
  category_id 	= Faker::Number.between(1, 3)
  gender_id		= Faker::Number.between(1, 2)
  user_id		= 1

  Contact.create!( name:  		name,
  				   homenum: 	homenum,
  				   mobnum: 		mobnum,
  				   adress: 		adress,
  				   category_id: category_id,
  				   gender_id:   gender_id,
  				   user_id: 	user_id,
				)

end