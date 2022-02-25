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

Order.destroy_all
Game.destroy_all
User.destroy_all
puts "Database cleaned"
puts "Seeding Database..."

user = User.new(email: "hosty@hosty.com", password: "123456")
game_1 = Game.new(
  user: user,
  name: "Fallout: New Vegas",
  description: "Fallout: New Vegas is a 2010 action role-playing game developed by Obsidian Entertainment and published by Bethesda Softworks. Fallout: New Vegas takes place in 2281, four years after the events of Fallout 3, 40 years after Fallout 2, 120 years after Fallout, and six years before the events of Fallout 4. The game is set in the Mojave Desert following the Great War.",
  genre: "shooter",
  price_cents: 1000
)
file = URI.open('https://static.wikia.nocookie.net/fallout/images/f/ff/FNV_box_art_%28US%29.jpg/revision/latest?cb=20150327233343')
game_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_1.save!

game_2 = Game.new(
  user: user,
  name: "Skyrim",
  description: "The Elder Scrolls V: Skyrim is an open-world action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks. Two hundred years have passed since the events of The Elder Scrolls IV: Oblivion, and it is now 4E 201. The High King of Skyrim has been killed, and the threat of Civil War looms over the land of Skyrim; One side wishes to secede from the weakened Third Empire, while the other wishes to remain a part of it.",
  genre: "adventure",
  price_cents: 1250
)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/1/15/The_Elder_Scrolls_V_Skyrim_cover.png')
game_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_2.save!

game_3 = Game.new(
  user: user,
  name: "Rainbow 6 : Siege",
  description: "Tom Clancy's Rainbow Six Siege is an online tactical shooter video game developed by Ubisoft Montreal and published by Ubisoft. At its heart, Rainbow Six Siege is a high-precision, tactical shooter that prioritises careful planning teamwork and finely tuned tactical play. Since its release in 2015, the game has radically expanded, adding extra maps, new operators, weapons, and themed seasonal events.",
  genre: "shooter",
  price_cents: 1500
)
file = URI.open('https://cdn.akamai.steamstatic.com/steam/apps/359550/capsule_616x353.jpg?t=1639409141')
game_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_3.save!

game_4 = Game.new(
  user: user,
  name: "Halo Reach",
  description: "Halo: Reach is a 2010 first-person shooter video game developed by Bungie and published by Microsoft Game Studios, originally for the Xbox 360. The fifth installment in the Halo series and a direct prequel to Halo: Combat Evolved. Noble Six meets the rest of Noble Team, shortly before they are dispatched to investigate why a communications relay has gone offline. They discover Covenant forces have invaded Reach. The team is relocated to defend Sword Base, an Office of Naval Intelligence (ONI) installation, from a Covenant assault.",
  genre: "shooter",
  price_cents: 1750
)
file = URI.open('https://cdn.akamai.steamstatic.com/steam/apps/1064220/capsule_616x353.jpg?t=1591395907')
game_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_4.save!

game_5 = Game.new(
  user: user,
  name: "Left 4 Dead",
  description: "Left 4 Dead is a series of cooperative first-person shooter survival horror video games published by Valve. An outbreak of a highly contagious pathogen nicknamed the Green Flu (which causes extreme aggression, mutation to the body cells, loss of higher brain functions, and essential zombification of those who catch it) begins in Pennsylvania.",
  genre: "shooter",
  price_cents: 3100
)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/5/5b/Left4Dead_Windows_cover.jpg')
game_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_5.save!

game_6 = Game.new(
  user: user,
  name: "League of Legends",
  description: "League of Legends, commonly referred to as League, is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III, Riot's founders sought to develop a stand-alone game in the same genre. In the game, two teams of five players battle in player versus player combat, each team occupying and defending their half of the map. Each of the ten players controls a character, known as a champion, with unique abilities and differing styles of play. During a match, champions become more powerful by collecting experience points, earning gold, and purchasing items to defeat the opposing team.",
  genre: "shooter",
  price_cents: 2950
)
file = URI.open('https://www.washingtonpost.com/resizer/6zOuyeY-z31e5Uwf8mHiKKuHoNA=/arc-anglerfish-washpost-prod-washpost/public/AAW3H3YGWRBOTJ6OWY65HA3A4M.jpg')
game_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_6.save!

game_7 = Game.new(
  user: user,
  name: "The Witcher 3",
  description: "The Witcher is a series of fantasy action role-playing games developed by CD Projekt Red and published by CD Projekt. It is based on the book series of the same name by Polish writer Andrzej Sapkowski, acting as sequels to the story of the books. The game is set in the Continent, a fictional fantasy world based on Slavonic mythology.[30][31][32] It is surrounded by parallel dimensions and extra-dimensional worlds. Humans, elves, dwarves, monsters and other creatures co-exist on the Continent, but non-humans are often persecuted for their differences.",
  genre: "shooter",
  price_cents: 1000
)
file = URI.open('https://static.wikia.nocookie.net/witcher/images/c/c8/TheWitcher3BoxArt.png/revision/latest?cb=20150512225156')
game_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_7.save!

game_8 = Game.new(
  user: user,
  name: "Divinity: Original Sin II",
  description: "Divinity: Original Sin II is a role-playing video game developed and published by Larian Studios. The sequel to 2014's Divinity: Original Sin, it was released for Microsoft Windows in September 2017... As with Divinity: Original Sin, players can play solo or with up to three others in their party.[2] Several pre-made characters with backstories are available to the player. Players are also able to create a custom character and choose their stats, race, gender, and origin story at the start of the game.",
  genre: "shooter",
  price_cents: 1800
)
file = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/435150/capsule_616x353.jpg?t=1631177562')
game_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_8.save!

game_9 = Game.new(
  user: user,
  name: "Gears of War",
  description: "Gears of War, also known simply as Gears, is a media franchise centered on a series of video games created by Epic Games, developed and managed by The Coalition, and owned and published by Xbox Game Studios",
  genre: "shooter",
  price_cents: 1500
)
file = URI.open('https://m.media-amazon.com/images/M/MV5BZjhhNWQ0YzQtMTk5Ni00OTE4LTlkYzQtYTZhMTNiYmE5OWQzXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_FMjpg_UX1000_.jpg')
game_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_9.save!

game_10 = Game.new(
  user: user,
  name: "FIFA 22",
  description: "FIFA 22 is a football simulation video game published by Electronic Arts. It is the 29th installment in the FIFA series, and was released worldwide on 1 October 2021 for Microsoft Windows, Nintendo Switch, PlayStation 4, PlayStation 5, Xbox One and Xbox Series X/S.",
  genre: "sports",
  price_cents: 3000
)
file = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1506830/capsule_616x353.jpg?t=1644868577')
game_10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_10.save!

game_11 = Game.new(
  user: user,
  name: "The Walking Dead",
  description: "The Walking Dead is an episodic, graphic adventure video game series developed and published by Telltale Games and Skybound Games, based on The Walking Dead comic book series. First released in April 2012, the series currently spans four main five-episode seasons, an additional episode as downloadable content, and a mini three-episode season, with the fourth and final season being released in 2018 and ended in 2019. The games have been released to personal computers, game consoles, and mobile devices and have had both digital and physical releases.",
  genre: "adventure",
  price_cents: 2000
)
file = URI.open('https://play-lh.googleusercontent.com/Z4DBaIKoo88TwrBNzaUvsgJWs5f0CiIo8kOVIt-EAB9vajKeia3d6WTvdCp4ExTuLlQ')
game_11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_11.save!

game_12 = Game.new(
  user: user,
  name: "Little Nightmares",
  description: "Little Nightmares is a puzzle-platform horror adventure game developed by Tarsier Studios and published by Bandai Namco Entertainment for Microsoft Windows, Nintendo Switch, PlayStation 4, Xbox One, and Stadia. Set in the claustrophobic corridors of The Maw, you play as Six, a small child trying to flee the horrors of the remote vessel, a place steeped in mystery and malevolence.",
  genre: "horror",
  price_cents: 2000
)
file = URI.open('https://image.api.playstation.com/cdn/EP0700/CUSA05952_00/SKFhXuFHR4VLamKO8TleItaxGc4iXDFX.png')
game_12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_12.save!

game_13 = Game.new(
  user: user,
  name: "Don't Starve",
  description: "Don't Starve is a survival video game developed by the Canadian indie video game developer Klei Entertainment. The game was initially released for Microsoft Windows, OS X, and Linux on April 23, 2013. The most horrifying idea of actual survival is having to do it on your lonesome. That’s exactly what Don’t Starve makes you do, as it’s an entirely solo experience. Don’t Starve focuses heavily on crafting to make your way through life, and so much of your time is spent harvesting raw materials – just like a crafting game. But rather than crafting houses like in Rust and Minecraft, this indie game is all about the tools and contraptions you can make.",
  genre: "survival",
  price_cents: 1500
)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/d/d2/Don%27t_Starve_cover.jpg')
game_13.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_13.save!

game_14 = Game.new(
  user: user,
  name: "Overwatch",
  description: "Overwatch is a 2016 team-based multiplayer first-person shooter game developed and published by Blizzard Entertainment. Described as a 'shooter', Overwatch assigns players into two teams of six, with each player selecting from a large roster of characters, known as 'heroes', with unique abilities.",
  genre: "multiplayer",
  price_cents: 2500
)
file = URI.open('https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg')
game_14.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_14.save!

game_15 = Game.new(
  user: user,
  name: "Microsoft Flight Simulator",
  description: "Microsoft Flight Simulator is a series of amateur flight simulator programs for Microsoft Windows operating systems, and earlier for MS-DOS and Classic Mac OS. It is one of the longest-running, best-known, and most comprehensive home flight simulator programs on the market. Microsoft Flight Simulator recreates every aspect of flying down to the last sublime detail: the hot air from the engines rippling over the wing as you begin your charge down the runway, and the streaks of rain across your windshield as you descend through the clouds.",
  genre: "simulation",
  price_cents: 2000
)
file = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1250410/capsule_616x353.jpg?t=1642699626')
game_15.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
game_15.save

puts "database looking fresh!"
