# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.destroy_all
User.destroy_all

Picture.create(
  user_id: 3,
  imgur_id: "https://i.imgur.com/XsvNTsw.jpg",
  posted_on: Date.parse("22-10-2015"),
  title: "Ship Pup",
  description: "this dog looks like a captain!"
)

User.create(
  name: "Francesca",
  email: "FrankiePup@puppy.com",
  password: "abc123",
  password_confirmation: "abc123",
  admin: true
)
