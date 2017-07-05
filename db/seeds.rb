# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    phone_number: "514-318-9821",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "french",
    rating:        4
  },
  {
    name:         "La truffière",
    phone_number: "514-849-2222",
    address:      "4 rue Blainville 75005 Paris",
    category:     "belgian",
    rating:        3
  },
  {
    name:         "Le pré catelan",
    phone_number: "403-313-7831",
    address:      "route de Suresnes 75016 Paris",
    category:     "italian",
    rating:        3
  },
  {
    name:         "Lola Rosa",
    phone_number: "403-521-9921",
    address:      "3525 rue milton Montreal",
    category:     "italian",
    rating:        5
  },
  {
    name:         "Furusato",
    phone_number: "413-854-7599",
    address:      "1211 avenue du parc 75016 Montreal",
    category:     "italian",
    rating:        5
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
