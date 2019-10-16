# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Videogame.destroy_all
Rental.destroy_all

#Users 
billy = User.create(name: "Billy", age: 21)
john = User.create(name: "John", age: 23)
david = User.create(name: "David", age: 20)
timmy = User.create(name: "Timmy", age: 8)

#Videogames 
supermario = Videogame.create(title: "Super Mario", erb_rating: "E")
mariokart = Videogame.create(title: "Mario Kart", erb_rating: "E")
callofduty = Videogame.create(title: "Call of Duty", erb_rating: "M")
pokemonred = Videogame.create(title: "Pokemon Red", erb_rating: "E")
marvelvscapcom = Videogame.create(title: "Marvel vs Capcom", erb_rating: "T")

#Rentals
rental_1 = Rental.create(start_date: "03 Oct, 2019",end_date: "01 Nov, 2019", price: 0, user_id: billy.id, videogame_id: supermario.id)

rental_2 = Rental.create(start_date: "04 Oct, 2019",end_date: "01 Nov, 2019", price: 0, user_id: john.id, videogame_id: callofduty.id)

rental_3 = Rental.create(start_date: "13 Oct, 2019",end_date: "01 Nov, 2019", price: 0, user_id: david.id, videogame_id: pokemonred.id)

rental_4 = Rental.create(start_date: "16 Oct, 2019",end_date: "01 Nov, 2019", price: 0, user_id: john.id, videogame_id: marvelvscapcom.id)

rental_5 = Rental.create(start_date: "04 Oct, 2019",end_date: "01 Nov, 2019", price: 0, user_id: billy.id, videogame_id: mariokart.id)

