FactoryBot.define do
  factory :song, class: Song do
    singer { Faker::Music.band }
    name { Faker::Music.album }
    genre { Faker::Music.genre }
    lyrics { Faker::Lorem.paragraph }
  end
end
