# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
User.destroy_all


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

Tree.create!(
  name: "Baobab",
  localisation: "Afrique",
  description: "blablabla",
  price: "70€",
  user: benjamin
  )


sequoia = Tree.create!(
  name: "Sequoia",
  localisation: "USA",
  description: "blablabla",
  price: "60€",
  user: theo
  )


Booking.create!(
  booked_at: "2021-10-10",
  user: theo,
  tree: sequoia
  )

 puts "#{Booking.count}"
