# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#``
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fortune.generate_seed
Album.delete_all
Photo.delete_all

5.times do
  Album.create(title: Faker::Ancient.hero)
end

20.times do
  Photo.create(album_id: Album.all.sample.id, title: Faker::Food.dish)
end
