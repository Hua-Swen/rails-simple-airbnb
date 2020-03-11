require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "dropping all database"
Flat.destroy_all

puts "generating 10 flats"

10.times do
  image_url = "https://source.unsplash.com/1600x900/?bedroom#{rand(1..100)}"
  Flat.create!(
    name: Faker::Address.street_name,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.review,
    price_per_night: rand(50..150),
    number_of_guests: rand(5..10),
    image_url: image_url
  )
end

puts "Done!"
