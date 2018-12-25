FactoryBot.define do
  factory :song, class: Song do
    singer { Faker::Music.band }
    name { Faker::Music.album }
    association :genre, factory: :genre
    lyrics { Faker::Lorem.paragraph }
  end
end
