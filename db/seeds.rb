# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  check = Faker::Internet.password(15)
    User.create(
    email: Faker::Internet.email, password: check, password_confirmation: check)
    end
3.times do
  Restaurant.create(name: Faker::Name.name, address: Faker::Address.street_address, city: Faker::Address.city)
end
