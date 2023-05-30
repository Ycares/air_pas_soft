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

# Folder .env for api key cloudinary :
# gem "dotenv-rails", groups: [:development, :test]
# then :
# bundle install
# touch .env
# echo '.env*' >> .gitignore
# git status # .env should not be there, we don't want to push it to GitHub
# git add .
# git commit -m "add dotenv-rails"

require 'faker'
puts "Cleaning database..."
Order.destroy_all
Weapon.destroy_all
User.destroy_all


puts "Creating users..."
#  status: %w(Newbie Intermediate Confirmed Professional).sample,
ycare = User.create!(
  username: "Ycare",
  email: "ycare@apple.com",
  # latitude: "47.218732",
  # longitude: "-1.489932",
  password: "azerty",
  age: 23,
  experience: "Newbie"
)

clara = User.create!(
  username: "Clara44",
  email: "clara@survive.com",
  # latitude: "47.223895",
  # longitude: "-1.581758",
  password: "123456",
  age: 18,
  experience: "Confirmed"
)

vince = User.create!(
  username: "Vincenzo",
  email: "weaponlover@wanadoo.fr",
  # latitude: "47.230995",
  # longitude: "-1.597152",
  password: "123456",
  age: 58,
  experience: "Intermediate"
)

puts "Creating weapons..."
weapons = [
  {
    name: "Katana",
    details: "A curved, single-edged sword with a circular or squared guard and a long grip.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Sharp, flexible, excellent cutting ability",
    category: "Attack",
    weapon_type: "Sword & Saber",
    price: rand(10...1000),
    efficiency_rate: 8,
    owner: clara
  },
  {
    name: "Shuriken",
    details: "A small, hand-held weapon with sharpened edges, used for Throwing.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Lightweight, concealable, used for ranged attacks",
    category: "Attack",
    weapon_type: "Throwing weapon",
    price: rand(10...1000),
    efficiency_rate: 6,
    owner: clara
  },
  {
    name: "Kusarigama",
    details: "A chain-sickle weapon that consists of a kama (a sickle) on a metal chain with a weight on the end.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Versatile, combines cutting and trapping techniques",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...1000),
    efficiency_rate: 7,
    owner: ycare
  },
  {
    name: "Arbalète",
    details: "A ranged weapon similar to a crossbow, consisting of a bow-like assembly mounted on a stock.",
    origin_country: "Europe",
    era_of_use: "Medieval period",
    characteristics: "Long range, high accuracy, used by both military and hunters",
    category: "Attack",
    weapon_type: "Throwing weapon",
    price: rand(10...1000),
    efficiency_rate: 8
  },
  {
    name: "Roman Gladius",
    details: "A short sword used by ancient Roman soldiers.",
    origin_country: "Ancient Rome",
    era_of_use: "Roman Empire",
    characteristics: "Short and double-edged, used for stabbing and slashing",
    category: "Attack",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 7
  },
  {
    name: "Spear",
    details: "A pole weapon with a sharp pointed end, used for thrusting or Throwing.",
    origin_country: "Various civilizations",
    era_of_use: "Ancient times",
    characteristics: "Versatile, long reach, used by both infantry and cavalry",
    category: "Attack",
    weapon_type: "Polearm",
    price: rand(10...5000),
    efficiency_rate: 9,
    owner: ycare
  },
  {
    name: "Claymore",
    details: "A large two-handed sword with a crossguard and a long grip.",
    origin_country: "Scotland",
    era_of_use: "Medieval period",
    characteristics: "Heavy, powerful cutting strikes",
    category: "Attack",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 7,
    owner: ycare
  },
  {
    name: "Khukuri",
    details: "A curved Nepalese knife used as both a tool and a weapon.",
    origin_country: "Nepal",
    era_of_use: "Various periods",
    characteristics: "Forward-curving blade, versatile for chopping and slashing",
    category: "Attack",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 7,
    owner: clara
  },
  {
    name: "Australian Boomerang",
    details: "A thrown tool typically made of wood, designed to return to the thrower.",
    origin_country: "Australia",
    era_of_use: "Ancient and modern periods",
    characteristics: "Returning projectile, used for hunting and warfare",
    category: "Attack",
    weapon_type: "Throwing weapon",
    efficiency_rate: 6,
    owner: ycare
  },
  {
    name: "European Buckler",
    details: "A small round shield held by a handle or strapped to the forearm.",
    origin_country: "Europe",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Lightweight, used for blocking and parrying",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 9,
    owner: vincent
  },
  {
    name: "Dagger",
    details: "A short-bladed weapon used for stabbing or thrusting.",
    origin_country: "Various civilizations",
    era_of_use: "Various periods",
    characteristics: "Concealable, used for close combat and as a backup weapon",
    category: "Defense",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 8,
    owner: vincent
  },
  {
    name: "Chinese Nunchaku",
    details: "Two short sticks connected by a chain or rope.",
    origin_country: "China",
    era_of_use: "Various periods",
    characteristics: "Versatile, used for striking and trapping",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 7,
    owner: vincent
  },
  {
    name: "Rapier",
    details: "A slender, sharply pointed sword used primarily for thrusting attacks.",
    origin_country: "Europe",
    era_of_use: "16th to 18th centuries",
    characteristics: "Fast and precise thrusting techniques",
    category: "Defense",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 8,
    owner: clara
  },
  {
    name: "Sai",
    details: "A three-pronged dagger used in martial arts and self-defense.",
    origin_country: "Okinawa, Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Defensive weapon, used for trapping and striking",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 9,
    owner: clara
  },
  {
    name: "Shield",
    details: "A piece of personal armor held in the hand or worn on the forearm.",
    origin_country: "Various civilizations",
    era_of_use: "Ancient and medieval periods",
    characteristics: "Various shapes and sizes, used for blocking attacks",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 10,
    owner: clara
  },
  {
    name: "Scotish Targe",
    details: "A round shield used by Scottish Highland warriors.",
    origin_country: "Scotland",
    era_of_use: "Medieval period",
    characteristics: "Lightweight, used for blocking and parrying",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 9,
    owner: clara
  },

  {
    name: "Halberd",
    details: "A two-handed pole weapon combining an axe blade and a spike.",
    origin_country: "Europe",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Versatile, used by infantry for slashing, thrusting, and hooking",
    category: "Defense",
    weapon_type: "Polearm",
    price: rand(10...5000),
    efficiency_rate: 9,
    owner: clara
  },

  {
    name: "Parrying Dagger",
    details: "A specialized dagger used in conjunction with a sword for blocking and parrying.",
    origin_country: "Europe",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Designed for deflecting and trapping opponent's weapon",
    category: "Defense",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 8,
    owner: clara
  },
  {
    name: "Gauntlet",
    details: "A glove with a metal-plated backhand used for hand-to-hand combat and defense.",
    origin_country: "Various civilizations",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Protective armor, used for blocking and striking",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 8,
    owner: clara
  },
  {
    name: "Medieval Glaive",
    details: "A Polearm with a large, single-edged blade on the end.",
    origin_country: "Europe",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Long reach, used for cutting and thrusting",
    category: "Defense",
    weapon_type: "Polearm",
    price: rand(10...5000),
    efficiency_rate: 9,
    owner: clara
  },
  {
    name: "Japanese Tessen",
    details: "A fan made of iron plates used by samurai as a concealed weapon.",
    origin_country: "Japan",
    era_of_use: "Feudal Japan",
    characteristics: "Concealable, used for striking and as a defensive shield",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 7,
    owner: clara
  },
  {
    name: "Bouclier",
    details: "A large shield used by medieval European knights.",
    origin_country: "Europe",
    era_of_use: "Medieval period",
    characteristics: "Heavy, used for blocking and protecting",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 10,
    owner: vincent
  },
  {
    name: "Parrying Dagger",
    details: "A specialized dagger used in conjunction with a sword for blocking and parrying.",
    origin_country: "Europe",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Designed for deflecting and trapping opponent's weapon",
    category: "Defense",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 8,
    owner: vincent
  },
  {
    name: "Katar",
    details: "A push dagger characterized by its H-shaped handle.",
    origin_country: "India",
    era_of_use: "Medieval and early modern periods",
    characteristics: "Thrusting weapon, used for close combat",
    category: "Defense",
    weapon_type: "Sword & Saber",
    price: rand(10...5000),
    efficiency_rate: 8,
    owner: vincent
  },
  {
    name: "Studded Leather Armor",
    details: "A type of armor made of leather with metal studs or spikes attached.",
    origin_country: "Various civilizations",
    era_of_use: "Medieval period",
    characteristics: "Lightweight, provides moderate protection",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...5000),
    efficiency_rate: 8,
    owner: vincent
  }
]

# Create Weapon records
weapons.each do |weapon|
  Weapon.create(weapon)
end

# puts "Creating orders..."
Order.create!(
  user:      ycare,
  weapon:  weapons.last,
  start_date:   "2023-06-01",
  end_date:     "2023-06-10",
  total_price: 1110,
  status: true
)

puts "Finished!"
