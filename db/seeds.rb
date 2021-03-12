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
  username: "theo",
  email: 'test@test.fr',
  password: 'azerty'
  )

benjamin = User.create!(
  username: "benjamin",
  email: 'test1@test.fr',
  password: 'azerty'
  )

 puts "#{User.count}"

baobab = Tree.new(
  name: "Baobab",
  localisation: "Afrique",
  description: "blablabla",
  price: "70€",
  user: benjamin
  )

url = "https://images.unsplash.com/photo-1458966480358-a0ac42de0a7a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80"
baobab.photo.attach(io: URI.open(url), filename: 'baobab.jpg')
baobab.save!

sapin = Tree.new(
  name: "Sapin",
  localisation: "France",
  description: "Moins présent que l'épicéa",
  price: "50€",
  user: benjamin
  )

url = "https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80"
sapin.photo.attach(io: URI.open(url), filename: 'sapin.jpg')
sapin.save!

# sequoia = Tree.create!(
#   name: "Sequoia",
#   localisation: "USA",
#   description: "arbre géant d'Amérique du Nord",
#   price: "60€",
#   user: theo
#   )

Booking.create!(
  booked_at: "2021-10-10",
  user: theo,
  tree: sapin
  )

 puts "#{Booking.count}"
 puts "#{Tree.count}"
