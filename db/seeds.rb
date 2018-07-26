# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# Création dogsitter
10.times do
  Dogsitter.create(name: Faker::Name.first_name,
    city_id: rand(1..12)
  )
end
# Création dog
14.times do
  Dog.create(city_id: rand(1..14),

  )
end
# Création city
15.times do
  City.create(city_name: Faker::Friends.location)
end
# Création strolls
15.times do
  Stroll.create(date: Faker::Date.forward(19),
dog_id: rand(Dog.first.id..Dog.last.id),
 dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id),
 city_id: rand(City.first.id..City.last.id)
)
end
