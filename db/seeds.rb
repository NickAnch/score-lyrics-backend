# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |num|
  num += 1
  Song.create!(
    singer: "Singer #{num}",
    name: "Name #{num}",
    lyrics: "text",
    translate: "text",
    views: "21",
    linkUrl: "URL #{num}"
  )
end
