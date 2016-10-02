FactoryGirl.define do
 factory :product do
  name { Faker::Lorem.sentence }
  image { Faker::Avatar.image }
  price { Faker::Commerce.price }
  description { Faker::Lorem.paragraph }
 end
end
