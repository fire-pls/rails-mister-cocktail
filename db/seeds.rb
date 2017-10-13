# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Ingredient.first.nil?
  3.times do |_|
    Ingredient.create(name:"ingredient#{_ + rand(1000)}")
  end
end


10.times do |_|
  cocktail = Cocktail.new(name:"cocktail#{_ + rand(1000)}")
  cocktail.photo_url = ("http://lorempixel.com/400/300/")
  cocktail.save
  ingredient = Ingredient.all.sample
  dose = Dose.new(description: "seed dose")
  dose.ingredient = ingredient
  dose.cocktail = cocktail
  dose.save
end
