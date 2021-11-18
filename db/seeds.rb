require "open-uri"
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
5.times do
  user_id = rand(1..10)
  s += 1
  @space = Space.create!(
    address: ["Portland, United States", "Amsterdam, Netherlands", "Brussels, Belgium", "Melbourne, Australia", "Frankfurt, Germany", "Jerusalem, Israel"].sample,
    description: ["Fantanstic place to do some homeworking", "Great place to do some design", "Perfect place for mobile hairdressers", "Sit back and relax"].sample,
    name: ["The Space", "Work Finisher", "The Freelancer", "The Vivid", "Relaxer", "Stylishings", "The Maker", "LiteraTour"].sample,
    availability: true,
    rating: rand(6..10),
    amenities: ["lock", "monitor", "desk", "mouse", "keyboard", "mirror", "tea", "coffee", "massage",
               "parking", "snacks", "shower", "hairdryer", "vacuum cleaner", "yoga mats", "balcony", "rooftop",
               "music player", "toaster", "fridge", "peloton"].sample,
    workspace_type: %w(spa office hairdresser massage artistry sculpting kitchen).sample,
    price: rand(10..35),
    user_id: user_id
  )
  photos_1 = ['https://images.unsplash.com/photo-1605719125065-3dd9e3f79057?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80', 'https://images.unsplash.com/photo-1585832770485-e68a5dbfad52?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=961&q=80','https://images.unsplash.com/photo-1588588256701-69dcfe4043c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=765&q=80', 'https://images.unsplash.com/photo-1587301669187-732ea66e7617?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', 'https://images.unsplash.com/photo-1592502007211-ac3b1ca5510e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80']
  photos_2 = ['https://images.unsplash.com/photo-1507652313519-d4e9174996dd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80', 'https://images.unsplash.com/photo-1620733723572-11c53f73a416?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80', 'https://images.unsplash.com/photo-1546387903-6d82d96ccca6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80', 'https://images.unsplash.com/photo-1532926381893-7542290edf1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', 'https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80']
  photos_3 = ['https://images.unsplash.com/photo-1447758902204-48010b87c24d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80', 'https://images.unsplash.com/photo-1525909002-1b05e0c869d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80', 'https://images.unsplash.com/photo-1456086272160-b28b0645b729?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1032&q=80', 'https://images.unsplash.com/photo-1521590832167-7bcbfaa6381f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80', 'https://images.unsplash.com/photo-1536520002442-39764a41e987?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80']
  file = URI.open(photos_1.sample)
  @space.photos.attach(io: file, filename: 'homework.png', content_type: 'image/png')
  file = URI.open(photos_2.sample)
  @space.photos.attach(io: file, filename: 'homework.png', content_type: 'image/png')
  file = URI.open(photos_3.sample)
  @space.photos.attach(io: file, filename: 'homework.png', content_type: 'image/png')
  puts "Created space - #{@space.id}"
end
puts "Created #{s} spaces"
