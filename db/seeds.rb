# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

User.destroy_all
Offer.destroy_all

# generate random users
puts "Creating users..."
5.times do
  user = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, balance: rand(1..10), address: Faker::Address.city)
  puts "Created #{user.first_name}"
end
puts "Finished!"

# generate random meals
puts "Creating meals..."
5.times do
  offer = Offer.create(meal_name: Faker::Food.dish, price: rand(1..10), portions: rand(1..5), meal_description: Faker::Food.description, user: User.all.sample)
  pic = URI.open("https://source.unsplash.com/random/?food")
  offer.photo.attach(io: pic, filename: "stock.png", content_type: "image/png")
  offer.save
  puts "Created #{offer.meal_name}"
end
puts "Finished!"
