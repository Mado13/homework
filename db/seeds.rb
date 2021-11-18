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

puts "Creating user seed..."
i = 0
10.times do
  i += 1
  @user = User.create!(
    first_name: %w(Matan Gabriel Johannes Aleksa Robert Albert).sample,
    last_name:  %w(Amidor DeVuyst Burchard Mikic Kutt Auge).sample,
    email: "user#{i}@user.com",
    password: "password",
    occupation: %w(Full Stack Developer Masseur Hair Dresser Designer Designer Engineer).sample,
    user_name: "tr4v3ll3r#{i}"
  )
  puts "Created user #{@user.id} - #{@user.first_name}"
end
puts "Created #{i} users"

s = 0
puts "Creating spaces..."
20.times do
  user_id = rand(1..10)
  s += 1
  @space = Space.create!(
    address: ["Portland, United States", "Amsterdam, Netherlands", "Brussels, Belgium", "Melbourne, Australia", "Frankfurt, Germany", "Jerusalem, Israel"].sample,
    description: ["Fantanstic place to do some homeworking", "Great place to do some design", "Perfect place for mobile hairdressers", "Sit back and relax"].sample,
    name: ["The Space", "Work Finisher", "The Freelancer", "The Vivid", "Relaxer", "Stylishings"].sample,
    availability: true,
    rating: rand(6..10),
    price: rand(10..35),
    user_id: user_id
  )
  puts "Created space - #{@space.id}"
end
puts "Created #{s} spaces"
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
