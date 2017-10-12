# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |_|
  cocktail = Cocktail.new(name:"cocktail#{_ + rand(1000)}")
  cocktail.save
  ingredient = Ingredient.new(name:"ingredient#{_ + rand(1000)}")
  ingredient.save
  dose = Dose.new(description: "hello")
  dose.ingredient = ingredient
  dose.cocktail = cocktail
  dose.save
  p ingredient
  p cocktail
  p dose
end
