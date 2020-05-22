# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

studio1 = Studio.create(name: "Awesome", location: "Evergreen")
movie_1 = studio1.movies.create(title: "Afflec", creation_year: 2007, genre: "Action")
actor1 = movie_1.actors.create(name: "Abby", age:28)
actor2 = movie_1.actors.create(name: "ross", age:27)
