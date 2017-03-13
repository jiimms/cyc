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
user.approval = 1
user.save!

user2 = User.new

user2.first_name = 'Jack'
user2.last_name = 'Donor'
user2.password = 'secret'
user2.email="bobdonor@gmail.com"
user2.user_type_id = 2
user2.approval = 1
user2.save!

user3 = User.new

user3.first_name = 'Mary'
user3.last_name = 'Recepient'
user3.password = 'secret'
user3.email="bobrecepient@gmail.com"
user3.user_type_id = 3
user3.approval = 1
user3.save!

user4 = User.new

user4.first_name = 'Jane'
user4.last_name = 'Recepient'
user4.password = 'secret'
user4.email="janerecepient@gmail.com"
user4.user_type_id = 3
user4.approval = 1
user4.save!

user4 = User.new

user4.first_name = 'Kevin'
user4.last_name = 'Recepient'
user4.password = 'secret'
user4.email="kevinrecepient@gmail.com"
user4.user_type_id = 3
user4.approval = 1
user4.save!

#Category
cat = Category.new

cat.title = "Widow"
cat.description = "For widows"
cat.save!


cat2 = Category.new

cat2.title = "Natural disaster survivers"
cat2.description = "For natural disaster survivers"
cat2.save!

cat3 = Category.new

cat3.title = "Medical Assistance"
cat3.description = "For medical assistance"
cat3.save!

cat4 = Category.new

cat4.title = "Education Assistance"
cat4.description = "For education assistance"
cat4.save!

cat5 = Category.new

cat5.title = "Other"
cat5.description = "Other assistance"
cat5.save!

#Recepient


recep = Recepient.new

recep.about_info = "I am a 60 year old, living in Japan, I lost my wife in the war in 1989 and I have since been living with my children in a small town. Life gets abit hard sometimes
as I have to work extra hard. I am sick too. Any assistance will be appreciated"
recep.home_address = "Okinawa"
recep.country_of_origin = "Japan"
recep.reason_for_need = "I would like to buy shoes and a bicycle"
recep.need_amount = "150usd"
recep.category_id = 1
recep.user_id = 3
recep.save!

recep.stories.new(recepient_id:1, title:"I was able to buy Medicine", body:"I have a wound that has never healed since the time I was a little child.With the hellp I got
 I have gone to hospital and was given medicine. Thank you!")
recep.save!

recep2 = Recepient.new

recep2.about_info = "I am a young 18 year old, living in Japan"
recep2.home_address = "Okinawa"
recep2.country_of_origin = "Japan"
recep2.reason_for_need = "I would like to buy shoes and a bicycle"
recep2.need_amount = "60usd"
recep2.category_id = 5
recep2.user_id = 4
recep2.save!

recep2.stories.new(recepient_id:2, title:"Widowed for 5years", body:"I got asssistance and I now have a job in Japan")
recep2.save!

recep3 = Recepient.new

recep3.about_info = " I am a disaster surviver"
recep3.home_address = "Syria, Moosul"
recep3.country_of_origin = "Japan"
recep3.reason_for_need = "Help in daily livelihood"
recep3.need_amount = "10usd"
recep3.category_id = 2
recep3.user_id = 5
recep3.save!

recep3.stories.new(recepient_id:3, title:"Help granted", body:"I got asssistance and I now I can continue with my daily life. I will post pics soon")
recep3.save!

donor = Donor.new

donor.about_info = "Gofi Corporation is an agricultural firm looking to donate to someone"
donor.home_address = "Berlin"
donor.country_of_origin = "Germany"
donor.reason_to_help = "To make the worl a better place"
# donor.amount_available_to_help = "150usd"
donor.user_id = 2
donor.save!

donor.donations.new(recepient_id: 1,donor_id:1, name:"Buy shoes for Bobby Recepient", amount:"10")
donor.save!





# user.first_name = 'Bobby'
# user.last_name = 'Guest'
# user.password = 'secret'
# user.email="bobguest@gmail.com"
# user.user_type_id = 4
# user.save!