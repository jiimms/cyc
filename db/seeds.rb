# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = UserType.create(user_role:"Admin")
a.save!

b = UserType.create(user_role:"Donor")
b.save!

c = UserType.create(user_role:"Recepient")
c.save!

d = UserType.create(user_role:"Guest")
d.save!

user = User.new

user.first_name = 'Bob'
user.last_name = 'Admin'
user.password = 'secret'
user.email="bob@gmail.com"
user.user_type_id = 1
user.save!

user2 = User.new

user2.first_name = 'Bobby'
user2.last_name = 'Donor'
user2.password = 'secret'
user2.email="bobdonor@gmail.com"
user2.user_type_id = 2
user2.save!

user3 = User.new

user3.first_name = 'Bobby'
user3.last_name = 'Recepient'
user3.password = 'secret'
user3.email="bobrecepient@gmail.com"
user3.user_type_id = 3
user3.save!


recep = Recepient.new

recep.about_info = "I am a young 18 year old, living in Japan"
recep.home_address = "Okinawa"
recep.country_of_origin = "Japan"
recep.reason_for_need = "I would like to buy shoes and a bicycle"
recep.need_amount = "150usd"
recep.user_id = 3
recep.save!

recep.stories.create(recepient_id:1, title:"Help to buy Medicine", body:"I have a wound that has never healed since the time I was a little child. I have gone to hospital severally but the doctors say that I can never be well. I can barely walk", category:"Medical")

donor = Donor.new

donor.about_info = "Gofi Corporation is an agricultural firm looking to donate to someone"
donor.home_address = "Berlin"
donor.country_of_origin = "Germany"
donor.reason_to_help = "To make the worl a better place"
# donor.amount_available_to_help = "150usd"
donor.user_id = 2
donor.save!

donor.donations.create(recepient_id: 1,donor_id:1, name:"Buy shoes for Bobby Recepient", amount:"10")



# user.first_name = 'Bobby'
# user.last_name = 'Guest'
# user.password = 'secret'
# user.email="bobguest@gmail.com"
# user.user_type_id = 4
# user.save!