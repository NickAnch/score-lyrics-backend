FactoryBot.define do
  factory :song, class: Song do
    singer { Faker::Music.band }
    name { Faker::Lorem.characters(10) }
    association :genre, factory: :genre
    association :author, factory: :user
    lyrics { Faker::Lorem.paragraph }
  end
end
