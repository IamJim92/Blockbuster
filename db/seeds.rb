# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# games = Game.create(
#   name: "Gears of War",
#   description: "Really cool game that James likes",
#   price: 100
# )

puts "Cleaning up database..."
Game.destroy_all
puts "Database cleaned"

user = User.new(email: "rodney@hotmail.com", password: "123123")
10.times do |i|
  Game.create!(
    user: user,
    name: "My Game #{i}",
    description: "Game description is pretty cool man!",
    price: 200,
    genre: "horror"
  )
end

puts "Games created"
