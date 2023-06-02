# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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

# require 'faker'
puts "Cleaning database..."
Order.destroy_all
Weapon.destroy_all
User.destroy_all

puts "Creating users..."
#  status: %w(Newbie Intermediate Confirmed Professional).sample,
ycare = User.create!(
  username: "Ycare",
  email: "ycare@apple.com",
  latitude: "47.218732",
  longitude: "-1.489932",
  password: "azerty",
  age: 23,
  experience: "Newbie"
)
file = File.open(Rails.root.join("db/seeds/users_img/ycare_light.jpg"))
ycare.photo.attach(io: file, filename: "ycare_light.jpg", content_type: "image/jpeg")

clara = User.create!(
  username: "Clara44",
  email: "clara@survival.com",
  latitude: "47.223895",
  longitude: "-1.581758",
  password: "123456",
  age: 18,
  experience: "Confirmed"
)
file = File.open(Rails.root.join("db/seeds/users_img/Clara_light.jpg"))
clara.photo.attach(io: file, filename: "Clara_light.jpg", content_type: "image/jpeg")

vince = User.create!(
  username: "Vincenzo",
  email: "vincenzo@wanadoo.fr",
  latitude: "47.230995",
  longitude: "-1.597152",
  password: "123456",
  age: 58,
  experience: "Intermediate"
)
file = File.open(Rails.root.join("db/seeds/users_img/vince_light.jpg"))
vince.photo.attach(io: file, filename: "vince_light.jpg", content_type: "image/jpeg")

puts "Creating weapons..."

weapon_katana = Weapon.create!(
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
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/katana.jpg"))
weapon_katana.photo.attach(io: file, filename: "katana.jpg", content_type: "image/jpeg")

weapon_shuriken = Weapon.create!(
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
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/shuriken.jpg"))
weapon_shuriken.photo.attach(io: file, filename: "shuriken.jpg", content_type: "image/jpeg")

weapon_kusarigama = Weapon.create!(
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
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Kusarigama2.jpg"))
weapon_kusarigama.photo.attach(io: file, filename: "Kusarigama2.jpg", content_type: "image/jpeg")

weapon_arbalete = Weapon.create!(
  {
    name: "Crossbow",
    details: "A ranged weapon similar to a crossbow, consisting of a bow-like assembly mounted on a stock.",
    origin_country: "Europe",
    era_of_use: "Medieval period",
    characteristics: "Long range, high accuracy, used by both military and hunters",
    category: "Attack",
    weapon_type: "Throwing weapon",
    price: rand(10...1000),
    efficiency_rate: 8,
    owner: vince
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/traditionnal_arbalete.jpg"))
weapon_arbalete.photo.attach(io: file, filename: "traditionnal_arbalete.jpg", content_type: "image/jpeg")

weapon_khukuri = Weapon.create!(
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
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Khukuri.jpg"))
weapon_khukuri.photo.attach(io: file, filename: "Khukuri.jpg", content_type: "image/jpeg")

weapon_nunchaku = Weapon.create!(
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
    owner: clara
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Nunchaku.jpg"))
weapon_nunchaku.photo.attach(io: file, filename: "Khukuri.jpg", content_type: "image/jpeg")


weapon_rapier = Weapon.create!(
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
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Rapier.png"))
weapon_rapier.photo.attach(io: file, filename: "Rapier.png", content_type: "image/png")

weapon_boomerang = Weapon.create!(
  {
    name: "Australian Boomerang",
    details: "A thrown tool typically made of wood, designed to return to the thrower.",
    origin_country: "Australia",
    era_of_use: "Ancient and modern periods",
    characteristics: "Returning projectile, used for hunting and warfare",
    category: "Attack",
    weapon_type: "Throwing weapon",
    price: rand(10...5000),
    efficiency_rate: 6,
    owner: clara
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/boomerang.jpg"))
weapon_boomerang.photo.attach(io: file, filename: "boomerang.jpg", content_type: "image/jpeg")


weapon_gauntlet = Weapon.create!(
  {
    name: "Gauntlet",
    details: "A glove with a metal-plated backhand used for hand-to-hand combat and defense.",
    origin_country: "Various civilizations",
    era_of_use: "Medieval and Renaissance periods",
    characteristics: "Protective armor, used for blocking and striking",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...50),
    efficiency_rate: 8,
    owner: vince
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Gauntlet.jpg"))
weapon_gauntlet.photo.attach(io: file, filename: "Gauntlet.jpg", content_type: "image/jpeg")

weapon_glaive = Weapon.create!(
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
    owner: vince
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/glaive.png"))
weapon_glaive.photo.attach(io: file, filename: "glaive.png", content_type: "image/png")

weapon_tessen = Weapon.create!(
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
    owner: ycare
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Tessen.jpg"))
weapon_tessen.photo.attach(io: file, filename: "Tessen.jpg", content_type: "image/jpeg")

weapon_shield = Weapon.create!(
  {
    name: "Gaule Shield",
    details: "A large shield used by gaule knights.",
    origin_country: "France",
    era_of_use: "Medieval period",
    characteristics: "Heavy, used for blocking and protecting into team battlefield",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10...500),
    efficiency_rate: 10,
    owner: vince
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Buckler.jpg"))
weapon_shield.photo.attach(io: file, filename: "Buckler.jpg", content_type: "image/jpeg")

weapon_armor = Weapon.create!(
  {
    name: "Studded Leather Armor",
    details: "A type of armor made of leather with metal studs or spikes attached.",
    origin_country: "Various civilizations",
    era_of_use: "Medieval period",
    characteristics: "Lightweight, provides moderate protection",
    category: "Defense",
    weapon_type: "Line weapon",
    price: rand(10..800),
    efficiency_rate: 8,
    owner: ycare
  }
)
file = File.open(Rails.root.join("db/seeds/weapons_img/Leather_Armor.jpg"))
weapon_armor.photo.attach(io: file, filename: "Leather_Armor.jpg", content_type: "image/jpeg")

weapon_katar = Weapon.create!(
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
  owner: clara
}
)
file = File.open(Rails.root.join("db/seeds/weapons_img/katar.jpeg"))
weapon_katar.photo.attach(io: file, filename: "katar.jpeg", content_type: "image/jpeg")


# # Create Weapon records
# weapons.each do |weapon|
#   Weapon.create(weapon)
# end

puts "Creating orders..."

#TODO : how to differenciate old orders (past) from new ones (order to come) ?

order = Order.create!(
  user:      ycare,
  weapon:  weapon_arbalete,
  start_date:   "2023-06-02",
  end_date:     "2023-06-10",
  total_price: 1110,
  status: true
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  user:      ycare,
  weapon:  weapon_katana,
  start_date:   "2023-01-02",
  end_date:     "2023-02-10",
  total_price: 5500,
  status: false
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  user:      ycare,
  weapon:  weapon_katana,
  start_date:   "2023-02-02",
  end_date:     "2023-02-10",
  total_price: 1500,
  status: true
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  # should be past_order
  user:      clara,
  weapon:  weapon_arbalete,
  start_date:   "2022-06-02",
  end_date:     "2022-06-10",
  total_price: 500,
  status: true,
  comment: "a very nice traditionnal tools, helped me to feel safe during my holidays"
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  # should be past_order
  user:      clara,
  weapon:  weapon_gauntlet,
  start_date:   "2023-04-02",
  end_date:     "2023-05-10",
  total_price: 500,
  status: true,
  comment: "a very nice traditionnal tools, helped me to feel safe during my holidays"
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  # should be past_order
  user:      vince,
  weapon:  weapon_katar,
  start_date:   "2023-08-02",
  end_date:     "2023-09-15",
  total_price: 350,
  status: nil,
  comment: "a very nice traditionnal tools, helped me to feel safe during my holidays"
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  # should be past_order
  user:      ycare,
  weapon:  weapon_nunchaku,
  start_date:   "2023-06-02",
  end_date:     "2023-05-15",
  total_price: 1350,
  status: nil,
  comment: "il a l'air trop cool ton nunchaku ! j'aimerai le tester pour ma prochaine chasse à l'homme "
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  # should be past_order
  user:      vince,
  weapon:  weapon_nunchaku,
  start_date:   "2023-06-02",
  end_date:     "2023-05-15",
  total_price: 1350,
  status: nil,
  comment: " envie de tester ce super produit "
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save


order = Order.create!(
  # should be past_order
  user:      clara,
  weapon:  weapon_shield,
  start_date:   "2023-01-02",
  end_date:     "2023-01-15",
  total_price: 500,
  status: true,
  comment: "a very nice traditionnal tools, helped me to feel safe during my holidays"
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  # should be futur_order
  user:      clara,
  weapon:  weapon_armor,
  start_date:   "2023-07-02",
  end_date:     "2023-08-10",
  total_price: 1500,
  status: true,
  comment: "a very nice traditionnal tools, helped me to feel safe during my holidays"
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  # should be current_order
  user:      clara,
  weapon:  weapon_kusarigama,
  start_date:   "2023-04-02",
  end_date:     "2023-06-15",
  total_price: 500,
  status: true,
  comment: "I love you weapon, i would like to order it again ! "
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

order = Order.create!(
  user:      vince,
  weapon:  weapon_shuriken,
  start_date:   "2023-01-02",
  end_date:     "2023-02-10",
  total_price: 880,
  status: true,
  comment: " a bit expensive but it was worth it, I finally got the rat in my garden !"
)
order.duration = (order.end_date - order.start_date).fdiv((24 * 3600))
order.save

# TODO : add more weapons seeds :
# {
#   name: "Roman Gladius",
#   details: "A short sword used by ancient Roman soldiers.",
#   origin_country: "Ancient Rome",
#   era_of_use: "Roman Empire",
#   characteristics: "Short and double-edged, used for stabbing and slashing",
#   category: "Attack",
#   weapon_type: "Sword & Saber",
#   price: rand(10...5000),
#   efficiency_rate: 7
# },
# {
#   name: "Spear",
#   details: "A pole weapon with a sharp pointed end, used for thrusting or Throwing.",
#   origin_country: "Various civilizations",
#   era_of_use: "Ancient times",
#   characteristics: "Versatile, long reach, used by both infantry and cavalry",
#   category: "Attack",
#   weapon_type: "Polearm",
#   price: rand(10...5000),
#   efficiency_rate: 9,
#   owner: ycare
# },
# {
#   name: "Claymore",
#   details: "A large two-handed sword with a crossguard and a long grip.",
#   origin_country: "Scotland",
#   era_of_use: "Medieval period",
#   characteristics: "Heavy, powerful cutting strikes",
#   category: "Attack",
#   weapon_type: "Sword & Saber",
#   price: rand(10...5000),
#   efficiency_rate: 7,
#   owner: ycare
# },


# {
#   name: "European Buckler",
#   details: "A small round shield held by a handle or strapped to the forearm.",
#   origin_country: "Europe",
#   era_of_use: "Medieval and Renaissance periods",
#   characteristics: "Lightweight, used for blocking and parrying",
#   category: "Defense",
#   weapon_type: "Line weapon",
#   price: rand(10...5000),
#   efficiency_rate: 9,
#   owner: vincent
# },
# {
#   name: "Dagger",
#   details: "A short-bladed weapon used for stabbing or thrusting.",
#   origin_country: "Various civilizations",
#   era_of_use: "Various periods",
#   characteristics: "Concealable, used for close combat and as a backup weapon",
#   category: "Defense",
#   weapon_type: "Sword & Saber",
#   price: rand(10...5000),
#   efficiency_rate: 8,
#   owner: vincent
# },

# {
#   name: "Sai",
#   details: "A three-pronged dagger used in martial arts and self-defense.",
#   origin_country: "Okinawa, Japan",
#   era_of_use: "Feudal Japan",
#   characteristics: "Defensive weapon, used for trapping and striking",
#   category: "Defense",
#   weapon_type: "Line weapon",
#   price: rand(10...5000),
#   efficiency_rate: 9,
#   owner: clara
# },
# {
#   name: "Shield",
#   details: "A piece of personal armor held in the hand or worn on the forearm.",
#   origin_country: "Various civilizations",
#   era_of_use: "Ancient and medieval periods",
#   characteristics: "Various shapes and sizes, used for blocking attacks",
#   category: "Defense",
#   weapon_type: "Line weapon",
#   price: rand(10...5000),
#   efficiency_rate: 10,
#   owner: clara
# },
# {
#   name: "Scotish Targe",
#   details: "A round shield used by Scottish Highland warriors.",
#   origin_country: "Scotland",
#   era_of_use: "Medieval period",
#   characteristics: "Lightweight, used for blocking and parrying",
#   category: "Defense",
#   weapon_type: "Line weapon",
#   price: rand(10...5000),
#   efficiency_rate: 9,
#   owner: clara
# },

# {
#   name: "Halberd",
#   details: "A two-handed pole weapon combining an axe blade and a spike.",
#   origin_country: "Europe",
#   era_of_use: "Medieval and Renaissance periods",
#   characteristics: "Versatile, used by infantry for slashing, thrusting, and hooking",
#   category: "Defense",
#   weapon_type: "Polearm",
#   price: rand(10...5000),
#   efficiency_rate: 9,
#   owner: clara
# },

# {
#   name: "Parrying Dagger",
#   details: "A specialized dagger used in conjunction with a sword for blocking and parrying.",
#   origin_country: "Europe",
#   era_of_use: "Medieval and Renaissance periods",
#   characteristics: "Designed for deflecting and trapping opponent's weapon",
#   category: "Defense",
#   weapon_type: "Sword & Saber",
#   price: rand(10...5000),
#   efficiency_rate: 8,
#   owner: clara
# },
#



puts "Finished!"


####
# Exemple from Cecile :
#####
# puts "Cleaning database..."
# Booking.destroy_all
# Restaurant.destroy_all
# User.destroy_all
# ​
# puts "Creating users..."
# alex    = User.create!(name: "Alex French Guy Cooking", email: "alex@mail.com", password: "azerty")
# gordon  = User.create!(name: "Gordon Ramsay", email: "gordon@mail.com", password: "azerty")
# thomas  = User.create!(name: "Thomas Keller", email: "thomas@mail.com", password: "azerty")
# raymond = User.create!(name: "Raymond Blanc", email: "raymond@mail.com", password: "azerty")
# ​
# puts "Creating restaurants..."
# resto_izakaya = Restaurant.create!(
#   owner:         gordon,
#   name:          "Izakaya Joyi",
#   address:       "4 Rue de Colmar, 44000 Nantes",
#   stars:         4,
#   price_per_day: 110
# )
# ​
# file = File.open(Rails.root.join("db/seeds/restaurants/resto-izakaya.jpg"))
# resto_izakaya.photo.attach(io: file, filename: "resto.jpg", content_type: "image/jpeg")
# ​
# resto_agave = Restaurant.create!(
#   owner:         thomas,
#   name:          "L'Agave",
#   address:       "11 Rue Léon Blum, 44000 Nantes",
#   stars:         5,
#   price_per_day: 100
# )
# ​
# file = URI.open("https://www.lestablesdenantes.fr/wp-content/uploads/2015/10/Izakaya-Joyi_040-825x510.jpg")
# resto_agave.photo.attach(io: file, filename: "resto.jpg", content_type: "image/jpeg")
# ​
# puts "Creating bookings..."
# Booking.create!(
#   renter:      alex,
#   restaurant:  resto_izakaya,
#   starts_on:   "2023-06-01",
#   ends_on:     "2023-06-10",
#   total_price: 1_110,
#   status:      "accepted"
# )
# ​
# puts "Finished!"
