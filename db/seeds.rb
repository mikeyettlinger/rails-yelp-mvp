# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"
Restaurant.destroy_all
puts "creating 10 restuarants"

10.times do
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  Restaurant.create({ name: Faker::Coffee.blend_name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: categories.sample})
end

puts "done"
