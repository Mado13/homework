# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# User.destroy_all
# Space.destroy_all

# @user = User.create!(
#   first_name: "Mado",
#   last_name: "Amidor",
#   email: "user@user.com",
#   password: "password",
#   occupation: "student"
# )

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

Review.create!(
  comment: "Bery Bery Bad",
  rating: 4,
  booking_id: 1
)
