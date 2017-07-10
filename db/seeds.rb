# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

facewash = Product.create(
  name: "Face Wash",
  brand: "Face wash brand"
)
facewash.ingredients.create(name: "Water")
facewash.ingredients.create(name: "Soap")

lotion = Product.create(
  name: "Lotion",
  brand: "Lotion Brand"
)
lotion.ingredients.create(name: "Water")
lotion.ingredients.create(name: "Fragrance")