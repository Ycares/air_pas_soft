# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
puts "Cleaning database..."
Weapon.destroy_all
User.destroy_all


20.times do
  User.create(
    name: Faker::Artist.name, #=> "Michelangelo"
    email: Faker::Internet.safe_email,
    latitude: Faker::Address.latitude, #=> "-58.17256227443719",
    longitude: Faker::Address.longitude,
    password: Faker::Internet.password(min_length: 8),
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    age: rand(18..75),
    status: %w(Newbie Intermediate Confirmed Professional).sample,
    nationality: %w(Chinese Italian Japanese French Belgian American Georgian Spanish Russian Ukrainian Nigerian Syrian ).sample
  )
end

Weapon.create(
  name: "Wonder Woman 1984",
  details: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
  price: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
  rating: rand(0..5)
  origin: %w(Chinese Italian Japanese French Belgian American Georgian Spanish Russian Ukrainian Nigerian Syrian).sample
  era: %w(Chinese Italian Japanese French Belgian American Georgian Spanish Russian Ukrainian Nigerian Syrian).sample
  price: rand(10...1000),
  type: "sword-saber"

)
type: "polearm"
type: "throwing weapon"
type: "whip"
type: "line_weapon"
type: "polearm"

weapons = [
  {
    name: "Katana",
    details: "A curved, single-edged sword with a circular or squared guard and a long grip.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Sharp, flexible, excellent cutting ability",
    category: "Attack"
  },
  {
    name: "Shuriken",
    details: "A small, hand-held weapon with sharpened edges, used for throwing.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Lightweight, concealable, used for ranged attacks",
    category: "Attack"
  },
  {
    name: "Kusarigama",
    details: "A chain-sickle weapon that consists of a kama (a sickle) on a metal chain with a weight on the end.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Versatile, combines cutting and trapping techniques",
    category: "Defense"
  },
  {
    name: "Arbalète",
    details: "A ranged weapon similar to a crossbow, consisting of a bow-like assembly mounted on a stock.",
    origin_country: "Europe",
    era_of_use: "Medieval period",
    characteristics: "Long range, high accuracy, used by both military and hunters",
    category: "Attack"
  },
  {
    name: "Gladius",
    details: "A short sword used by ancient Roman soldiers.",
    origin_country: "Ancient Rome",
    era_of_use: "Roman Empire",
    characteristics: "Short and double-edged, used for stabbing and slashing",
    category: "Attack"
  },
  {
    name: "Spear",
    details: "A pole weapon with a sharp pointed end, used for thrusting or throwing.",
    origin_country: "Various civilizations",
    era_of_use: "Ancient times",
    characteristics: "Versatile, long reach, used by both infantry and cavalry",
    category: "Attack"
  },
  {
    name: "Claymore",
    details: "A large two-handed sword with a crossguard and a long grip.",
    origin_country: "Scotland",
    era_of_use: "Medieval period",
    characteristics: "Heavy, powerful cutting strikes",
    category: "Attack"
  },
  {
    name: "Khukuri",
    details: "A curved Nepalese knife used as both a tool and a weapon.",
    origin_country: "Nepal",
    era_of_use: "Various periods",
    characteristics: "Forward-curving blade, versatile for chopping and slashing",
    category: "Attack"
  },
  {
    name: "Boomerang",
    details: "A thrown tool typically made of wood, designed to return to the thrower.",
    origin_country: "Australia",
    era_of_use: "Indigenous cultures",
    characteristics: "Used for hunting and warfare, returning flight path",
    category: "Attack"
  },
  {
    name: "Halberd",
    details: "A two-handed pole weapon combining an axe blade and a spike.",
    origin_country: "Europe",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Versatile, used by infantry for slashing, thrusting, and hooking",
    category: "Attack"
  },
  {
    name: "Dao",
    details: "A Chinese single-edged sword with a curved blade.",
    origin_country: "China",
    era_of_use: "Various periods",
    characteristics: "Sharp and versatile, used for slashing and chopping",
    category: "Attack"
  },
  {
    name: "Macuahuitl",
    details: "A wooden club-like weapon with embedded obsidian blades.",
    origin_country: "Mesoamerica",
    era_of_use: "Aztec civilization",
    characteristics: "Sharp cutting blades, used for slashing and chopping",
    category: "Attack"
  },
  {
    name: "Pata",
    details: "A sword from the Indian subcontinent with a gauntlet integrated into the hilt.",
    origin_country: "India",
    era_of_use: "Medieval period",
    characteristics: "Unique hilt design, used for thrusting and slashing",
    category: "Attack"
  },
  {
    name: "Katar",
    details: "A push dagger characterized by its H-shaped handle.",
    origin_country: "India",
    era_of_use: "Ancient and medieval periods",
    characteristics: "Thrusting weapon, used in close combat",
    category: "Attack"
  },
  {
    name: "Pilum",
    details: "A Roman javelin used by the Roman legions.",
    origin_country: "Ancient Rome",
    era_of_use: "Roman Empire",
    characteristics: "Thrown weapon, designed to stick into shields or bodies",
    category: "Attack"
  },
  {
    name: "Sai",
    details: "A three-pronged dagger used in martial arts and self-defense.",
    origin_country: "Okinawa, Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Defensive weapon, used for trapping and striking",
    category: "Defense"
  },
  {
    name: "Zhanmadao",
    details: "A Chinese pole weapon with a wide, curved blade.",
    origin_country: "China",
    era_of_use: "Medieval and early modern periods",
    characteristics: "Large cutting weapon, used by cavalry",
    category: "Attack"
  },
  {
    name: "Tomahawk",
    details: "A single-handed axe-like weapon used by Native American tribes.",
    origin_country: "North America",
    era_of_use: "Indigenous cultures",
    characteristics: "Versatile, used for chopping, throwing, and close combat",
    category: "Attack"
  },
  {
    name: "War Fan",
    details: "A fan-shaped weapon typically made of metal.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Concealable, used for striking and parrying",
    category: "Defense"
  },
  {
    name: "Bō",
    details: "A long staff weapon used in various martial arts.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Versatile, used for striking and blocking",
    category: "Defense"
  },
  {
    name: "Scimitar",
    details: "A curved, single-edged sword with a long cutting edge.",
    origin_country: "Middle East",
    era_of_use: "Various periods",
    characteristics: "Curved blade, used for slashing and cutting",
    category: "Attack"
  },
  {
    name: "Kampilan",
    details: "A Filipino sword characterized by its long, wide, and asymmetrical blade.",
    origin_country: "Philippines",
    era_of_use: "Pre-colonial period",
    characteristics: "Large cutting weapon, used by warriors and datu (chiefs)",
    category: "Attack"
  },
  {
    name: "Talwar",
    details: "A curved sword commonly used in the Indian subcontinent.",
    origin_country: "India",
    era_of_use: "Medieval and early modern periods",
    characteristics: "Curved blade, used for slashing and thrusting",
    category: "Attack"
  },
  {
    name: "Falcata",
    details: "A curved sword used by ancient Iberians and Celtiberians.",
    origin_country: "Iberian Peninsula",
    era_of_use: "Ancient times",
    characteristics: "Curved blade, used for slashing and chopping",
    category: "Attack"
  },
  {
    name: "Kpinga",
    details: "A throwing knife with a curved blade and a handle at the center.",
    origin_country: "Central Africa",
    era_of_use: "Various periods",
    characteristics: "Thrown weapon, used for long-range attacks",
    category: "Attack"
  },
  {
    name: "Zweihander",
    details: "A large two-handed sword used in the late medieval and Renaissance periods.",
    origin_country: "Germany",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Massive size, used for powerful cutting strikes",
    category: "Attack"
  }
  # Add more weapons here...
]

# Create Weapon records
weapons.each do |weapon|
  Weapon.create(weapon)
end
puts "Finished!"
