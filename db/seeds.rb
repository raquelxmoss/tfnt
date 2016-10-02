# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

require "faker"

User.destroy_all
Product.destroy_all

20.times do
  Product.create(
   name: Faker::Lorem.sentence,
   image: Faker::Avatar.image,
   price: Faker::Commerce.price,
   description: Faker::Lorem.paragraph
  )
end

100.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password"
  )

  rand(1..5).times do
    UserProduct.create(product: Product.all.sample, user: user)
  end
end

