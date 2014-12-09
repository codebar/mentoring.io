FactoryGirl.define do
  factory :member do
    sequence(:email) { |n| "person#{n}@example.com" }
    password         { Faker::Internet.password }

    factory :complete_member do
      about    { Faker::Lorem.paragraph(1) }
      location { Faker::Address.city       }
    end
  end
end