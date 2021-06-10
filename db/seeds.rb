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

require "open-uri"


# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234812/oedu9sq3e9u76grw4m01.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234796/ezmiayyive7m6gdsof1t.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234775/r8bexr67yuxqz63qdsag.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234745/tfhwtvn1qxlhlhde0gqq.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234721/zio3ooloam35a4c56c3w.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234692/rqkg4ahh80ijppwlztut.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234673/uarv6tu66dqt8mkbbqqp.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234655/hb5bp94tfpcwid7edgi7.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("hhttps://res.cloudinary.com/sassia93/image/upload/v1623234640/meqihrimczfnnssds8ps.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234613/goxkgwxbdxotorwznysb.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234599/vififhyp855sy9rccn3a.jpg", width: 400, height: 300, crop: :fill),
# cl_image_tag("https://res.cloudinary.com/sassia93/image/upload/v1623234553/wsaqf8mq0er1pvgxrgm6.jpg", width: 400, height: 300, crop: :fill),
# ]

# ("https://source.unsplash.com/collection/772333/1600x900")
# IMAGES CLOUDINARY
# seed_images = ["https://res.cloudinary.com/sassia93/image/upload/v1623234848/rcbddmuey0itjcgiz7bg.jpg","https://res.cloudinary.com/sassia93/image/upload/v1623234823/kcjcfpnq8bhypj1ghvf2.jpg"]
icons = [
  {
    image_url: "https://ca-times.brightspotcdn.com/dims4/default/bec99d7/2147483647/strip/true/crop/2000x2706+0+0/resize/840x1137!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fff%2F2c%2Fdedf568e4af087cab5f0a5c76f32%2Fla-ca-bk-a-promised-land-barack-obama-183.JPG",
    name: "Barack Obama", category: "Politics",
    description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things",
    price: 1000, location: "Washington DC"
  },
  {
    image_url: "https://yt3.ggpht.com/ytc/AAUvwnhSeGCbeHJD09S7X-Qo8yuQKJqYdHa85OqkBDzSmg=s900-c-k-c0x00ffffff-no-rj",
    name: "Gordon Ramsey", category: "Food",
    description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things",
    price: 100, location: "London"
  },
  {
    image_url: "https://miro.medium.com/max/287/1*QA0-0_1d6AKjDTkqsgP7gg.jpeg",
    name: "Socrates", category: "Writing",
    description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things",
    price: 30, location: "Athens"
  },
  {
    image_url: "https://aws.revistavanityfair.es/prod/designs/v1/assets/785x589/218198.jpg",
    name: "Rihanna", category: "Music",
    description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things",
    price: 10, location: "Barbados"
  },
   {
    image_url: "https://phantom-marca.unidadeditorial.es/6325b621b1ec481729f0865211d0ed3f/resize/1320/f/jpg/assets/multimedia/imagenes/2020/11/25/16062940399517.jpg",
    name: "Michael Jordan", category: "Sports",
    description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things",
    price: 10, location: "Chicago"
  },
  {
    image_url: "https://www.cocinayvino.com/wp-content/uploads/2021/04/www.cocinayvino.com-por-que-denunciaron-a-salt-bae-vegaseatercom-1.jpg",
    name: "Salt Bae", category: "Food",
    description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things",
    price: 10, location: "Mexico"
  },
  {
    image_url: "https://i1.wp.com/hipertextual.com/wp-content/uploads/2018/01/breaking_bad_vince_gilligan_amc.jpg?fit=1000%2C667&ssl=1",
    name: "Walter White", category: "Business",
    description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things",
    price: 10, location: "Wisconsin"
  }

]

vlad = User.create(email: "adrewkin@outlook.com", password: "password")
carlos = User.create(email: "lacuevafortitcarlos@gmail.com", password: "password")
alexia = User.create(email: "sassia93@hotmail.com", password: "password")
millad = User.create(email: "shadpourmillad@gmail.com", password: "password")
 



# icon_1 = {name: "Flavio", category: "sports", description: "Super fun guy to meet, will teach you many differetn things Super fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}
# icon_2 = {name: "Michael", category: "arts", description: "Super fun guy to meet, will teach you many differetn thingSuper fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}
# icon_3 = {name: "Bob", category: "music", description: "Super fun guy to meet, will teach you many differetn thingSuper fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}
# icon_4 = {name: "Flavio", category: "sports", description: "Super fun guy to meet, will teach you many differetn thing Super fun guy to meet, will teach you many differetn things", price: 10, location: "Barcelona"}


# one = Icon.create!(icon_1.merge(user: vlad))
# two = Icon.create!(icon_2.merge(user: carlos))
# Icon.create!(icon_3.merge(user: alexia))
# Icon.create!(icon_4.merge(user: millad))

# date_test_1 = DateTime.parse("08/06/2021 8:00") 
# date_test_2 = DateTime.parse("08/06/2021 10:00") 
# Booking.create!(icon: one, user: vlad, start_time: "8:00", end_time: "10:00", status: 1 )
start_times = ["08:00", "10:00", "12:00"]
end_times = ["14:00", "16:00", "18:00"]




icons.each do |icon|
    new_user = User.all.sample
    new_icon = Icon.create!(name: icon[:name], category: icon[:category], description: icon[:description], price: icon[:price], location: icon[:location], user: new_user)

    file = URI.open(icon[:image_url])
    # new_one.photo.attach(file)
    new_icon.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
    new_icon.save!
    Booking.create!(
        icon: new_icon,
        user: new_user,
        start_time: start_times.sample,
        end_time: end_times.sample,
        status: (0..1).to_a.sample
        )
end
puts "Created #{User.count} users"
puts "Created #{Icon.count} icons"
puts "Created #{Booking.count} bookings"
