# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
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



