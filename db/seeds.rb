# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

Restaurant.destroy_all

array = %W[chinese italian japanese french belgian]

puts 'Creating restaurants..'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: array.sample
  )
  restaurant.save!
  puts "Restaurant #{restaurant.id} created"
end
