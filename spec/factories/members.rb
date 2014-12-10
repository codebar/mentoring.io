FactoryGirl.define do
  factory :member do
    sequence(:email) { |n| "person#{n}@example.com" }
    password { 'password' }

    factory :complete_member do
      confirmed_at { Time.now                  }
      full_name    { Faker::Name.name          }
      username     { Faker::Internet.user_name }
      about        { Faker::Lorem.paragraph(1) }
      location     { Faker::Address.city       }
    end
  end
end