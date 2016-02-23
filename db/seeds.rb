# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.delete.all
User.delete.all


Picture.create(
  imgur_id: XsvNTsw
  posted_on: Date.parse("25-01-2016")
  title: "Ship Pup"
  description: "this dog looks like a captain!"
  )

User.create(
  name: Francesca
  email: FrankiePup@puppy.com
  password: "abc123"
  )
