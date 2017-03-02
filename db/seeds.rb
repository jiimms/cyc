# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new

user.first_name = 'Bob'
user.last_name = 'Admin'
user.password = 'secret'
user.email="bob@gmail.com"
user.user_type_id = 1
user.save!


user.first_name = 'Bobby'
user.last_name = 'Donor'
user.password = 'secret'
user.email="bobdonor@gmail.com"
user.user_type_id = 2
user.save!

user.first_name = 'Bobby'
user.last_name = 'Recepient'
user.password = 'secret'
user.email="bobrecepient@gmail.com"
user.user_type_id = 3
user.save!

# user.first_name = 'Bobby'
# user.last_name = 'Guest'
# user.password = 'secret'
# user.email="bobguest@gmail.com"
# user.user_type_id = 4
# user.save!