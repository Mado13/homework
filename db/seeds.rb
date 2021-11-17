# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

User.destroy_all
Space.destroy_all

@user = User.create!(
  first_name: "Mado",
  last_name: "Amidor",
  email: "user@user.com",
  password: "password",
  occupation: "student"
)

# 50.times do
#   Space.create!(
#     address: "Portland, Oregon",
#     description: Faker::Quote.most_interesting_man_in_the_world,
#     name: Faker::FunnyName.name,
#     availability: [true, false].sample,
#     rating: rand(1..10),
#     price: rand(50..350),
#     user_id: @user.id
#   )
# end

# 50.times do
#   Space.create!(
#     #address: Faker::Address.full_address,
#     city: "Amsterdam",
#     country: "Netherlands",
#     street: "Opijnenhof",
#     amenities: "monitor",
#     street_number: rand(1..10),
#     description: Faker::Quote.most_interesting_man_in_the_world,
#     name: Faker::FunnyName.name,
#     availability: [true, false].sample,
#     rating: rand(1..10),
#     price: rand(50..350),
#     user_id: @user.id
#   )
# end
