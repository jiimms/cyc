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

# user.first_name = 'Bobby'
# user.last_name = 'Guest'
# user.password = 'secret'
# user.email="bobguest@gmail.com"
# user.user_type_id = 4
# user.save!