# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning seeds"
Product.destroy_all
puts "seeds are clean!"

puts "sowing seeds and making them grow ^_^-b"
8.times do
  Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price(range = 0..10.10, as_string = false), description: Faker::Lorem.sentence)
end
