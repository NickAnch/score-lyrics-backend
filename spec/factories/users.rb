FactoryBot.define do
  factory :user, class: User do
    email { Faker::Internet.email }
    password '123456'
    username { Faker::Name.first_name }
    birthday { Faker::Date.birthday(18, 65) }
    gender { Faker::Number.between(0, 1) }
  end
end
