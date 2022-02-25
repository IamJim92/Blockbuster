require "open-uri"
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
User.destroy_all
puts "Database cleaned"
puts "Seeding Database"
user = User.new(email: "hosty@hosty.com", password: "123456")
game_1 = Game.new(
  user: user,
  name: "Fallout: New Vegas",
  description: "Fallout: New Vegas is a 2010 action role-playing game developed by Obsidian Entertainment and published by Bethesda Softworks",
  genre: "shooter",
  price_cents: 1000
)
file = URI.open('https://static.wikia.nocookie.net/fallout/images/f/ff/FNV_box_art_%28US%29.jpg/revision/latest?cb=20150327233343')
game_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_1.save!

game_2 = Game.new(
  user: user,
  name: "Skyrim",
  description: "The Elder Scrolls V: Skyrim is an open-world action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks",
  genre: "adventure",
  price_cents: 1250
)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/1/15/The_Elder_Scrolls_V_Skyrim_cover.png')
game_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_2.save!

game_3 = Game.new(
  user: user,
  name: "Rainbow 6 : Siege",
  description: "Tom Clancy's Rainbow Six Siege is an online tactical shooter video game developed by Ubisoft Montreal and published by Ubisoft",
  genre: "shooter",
  price_cents: 1500
)
file = URI.open('https://cdn.akamai.steamstatic.com/steam/apps/359550/capsule_616x353.jpg?t=1639409141')
game_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_3.save!

game_4 = Game.new(
  user: user,
  name: "Halo Reach",
  description: "Halo: Reach is a 2010 first-person shooter video game developed by Bungie and published by Microsoft Game Studios, originally for the Xbox 360. The fifth installment in the Halo series and a direct prequel to Halo: Combat Evolved",
  genre: "shooter",
  price_cents: 1750
)
file = URI.open('https://cdn.akamai.steamstatic.com/steam/apps/1064220/capsule_616x353.jpg?t=1591395907')
game_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_4.save!

game_5 = Game.new(
  user: user,
  name: "Left 4 Dead",
  description: "Left 4 Dead is a series of cooperative first-person shooter survival horror video games published by Valve",
  genre: "shooter",
  price_cents: 3100
)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/5/5b/Left4Dead_Windows_cover.jpg')
game_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_5.save!

game_6 = Game.new(
  user: user,
  name: "League of Legends",
  description: "League of Legends, commonly referred to as League, is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III, Riot's founders sought to develop a stand-alone game in the same genre",
  genre: "shooter",
  price_cents: 2950
)
file = URI.open('https://www.washingtonpost.com/resizer/6zOuyeY-z31e5Uwf8mHiKKuHoNA=/arc-anglerfish-washpost-prod-washpost/public/AAW3H3YGWRBOTJ6OWY65HA3A4M.jpg')
game_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_6.save!

game_7 = Game.new(
  user: user,
  name: "The Witcher 3",
  description: "The Witcher is a series of fantasy action role-playing games developed by CD Projekt Red and published by CD Projekt. It is based on the book series of the same name by Polish writer Andrzej Sapkowski, acting as sequels to the story of the books",
  genre: "shooter",
  price_cents: 1000
)
file = URI.open('https://static.wikia.nocookie.net/witcher/images/c/c8/TheWitcher3BoxArt.png/revision/latest?cb=20150512225156')
game_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_7.save!

game_8 = Game.new(
  user: user,
  name: "Divinity: Original Sin II",
  description: "Divinity: Original Sin II is a role-playing video game developed and published by Larian Studios. The sequel to 2014's Divinity: Original Sin, it was released for Microsoft Windows in September 2017..",
  genre: "shooter",
  price_cents: 1800
)
file = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/435150/capsule_616x353.jpg?t=1631177562')
game_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_8.save!
