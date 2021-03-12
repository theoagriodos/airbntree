# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

Booking.destroy_all
User.destroy_all
Tree.destroy_all

theo = User.create!(
  username: "Jim Lafeuille",
  email: 'test@test.fr',
  password: 'azerty'
  )

benjamin = User.create!(
  username: "Benjamin Siret",
  email: 'test1@test.fr',
  password: 'azerty'
  )

 puts "#{User.count}"

baobab = Tree.new(
  name: "Baobab",
  localisation: "Afrique",
  description: "Majesteux et imposant",
  price: "70€",
  user: theo
  )

url = "https://images.unsplash.com/photo-1558694440-03ade9215d7b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"
baobab.photo.attach(io: URI.open(url), filename: 'baobab.jpg')
baobab.save!

sapin = Tree.new(
  name: "Sapin",
  localisation: "France",
  description: "Moins présent que l'épicéa",
  price: "50€",
  user: benjamin
  )

url = "https://images.pexels.com/photos/1978126/pexels-photo-1978126.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
sapin.photo.attach(io: URI.open(url), filename: 'sapin.jpg')
sapin.save!

sequoia = Tree.create!(
  name: "Sequoia",
  localisation: "USA",
  description: "Arbre géant d'Amérique du Nord",
  price: "60€",
  user: theo
  )

url = "https://images.pexels.com/photos/2847282/pexels-photo-2847282.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
sequoia.photo.attach(io: URI.open(url), filename: 'sequoia.jpg')
sequoia.save!

cerisier = Tree.create!(
  name: "cerisier",
  localisation: "Japon",
  description: "Konichiwa 🍥",
  price: "100€",
  user: theo
  )

url = "https://images.pexels.com/photos/5220030/pexels-photo-5220030.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
cerisier.photo.attach(io: URI.open(url), filename: 'cerisier.jpg')
cerisier.save!


Booking.create!(
  booked_at: "2021-10-10",
  user: theo,
  tree: sapin
  )

 puts "#{Booking.count}"
 puts "#{Tree.count}"
