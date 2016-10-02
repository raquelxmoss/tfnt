FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password "password"

    factory :user_with_products do
      transient do
        product { FactoryGirl.create :product }
      end

      after :create do |user, evaluator|
        user.products << evaluator.product
        user.save
      end
    end
  end
end
