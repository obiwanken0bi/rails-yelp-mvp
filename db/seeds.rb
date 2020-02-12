# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."
restaurants_attributes = [
  {
    name: "Burger Empire",
    address: "7 Boundary St, London E2 7JE",
    category: "french"
  },
  {
    name: "Mc Donald's",
    address: "523 Shitty St, London",
    category: "belgian"
  },
  {
    name: "Pizza Nico",
    address: "110 Cours Balguerie, Bordeaux",
    category: "italian"
  },
  {
    name: "Rake!",
    address: "666 Rspec Avenue, New York City",
    category: "french"
  },
  {
    name: "United UBB",
    address: "432 Rugby Bd, Bordeaux",
    category: "french"
  }
]
Restaurant.create!(restaurants_attributes)
puts "Finished!"
