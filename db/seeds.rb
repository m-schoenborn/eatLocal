# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Producer.destroy_all
Product.destroy_all

2.times do
  Producer.create(
    name: Faker::FunnyName.two_word_name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.city,
    email: Faker::Internet.email,
    description: Faker::Restaurant.description,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    status: Faker::String.random(length: 4)
    )

end

2.times do
  Product.create(
    name: Faker::Food.vegetables,
    producer: Producer.all.sample
    )
end
