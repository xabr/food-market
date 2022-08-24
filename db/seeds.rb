# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating restaurants..."
10.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.city, category: "chinese")
  puts "Created #{restaurant.name}"
end
puts "Finished!"
