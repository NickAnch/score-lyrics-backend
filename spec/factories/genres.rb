FactoryBot.define do
  factory :genre, class: Genre do
    name { Faker::Music.genre }
  end
end
