# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying all users"
User.destroy_all
puts "Destroying all icons"
Icon.destroy_all


vlad = User.create(email: "adrewkin@outlook.com", password: "password")
carlos = User.create(email: "lacuevafortitcarlos@gmail.com", password: "password")
alexia = User.create(email: "sassia93@hotmail.com", password: "password")
millad = User.create(email: "shadpourmillad@gmail.com", password: "password")
 



icon_1 = {name: "Flavio", category: "sports", description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}
icon_2 = {name: "Michael", category: "arts", description: "Super fun guy to meet, will teach you many differetn thingSuper fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}
icon_3 = {name: "Bob", category: "music", description: "Super fun guy to meet, will teach you many differetn thingSuper fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}
icon_4 = {name: "Flavio", category: "sports", description: "Super fun guy to meet, will teach you many differetn thing Super fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}


one = Icon.create!(icon_1.merge(user: vlad))
two = Icon.create!(icon_2.merge(user: carlos))
Icon.create!(icon_3.merge(user: alexia))
Icon.create!(icon_4.merge(user: millad))

# date_test_1 = DateTime.parse("08/06/2021 8:00") 
# date_test_2 = DateTime.parse("08/06/2021 10:00") 
Booking.create!(icon: one, user: vlad, start_time: "8:00", end_time: "10:00", status: 1 )
start_times = ["08:00", "10:00", "12:00"]
end_times = ["14:00", "16:00", "18:00"]
category = ["sports", "arts", "music"]
prices = [10, 25, 50, 100, 250, 500, 1000]


50.times do
    new_user = User.all.sample
    new_icon_1 = {name: Faker::Name.name, category: category.sample, description: Faker::Quote.most_interesting_man_in_the_world, price: prices.sample, location: Faker::Address.street_name }
    new_one = Icon.create!(new_icon_1.merge(user: new_user))
    Booking.create!(
        icon: new_one,
        user: new_user,
        start_time: start_times.sample,
        end_time: end_times.sample,
        status: (0..1).to_a.sample
        )
end
puts "This many user#{User.count}'s created"