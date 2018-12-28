FactoryBot.define do
  factory :user, class: User do
    email { Faker::Internet.email }
    password '123456'
    username { Faker::Name.first_name }
  end
end
