# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
require 'faker'

if Ingredient.first.nil?
  json_list = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
  json_list.drinks.each do ingredient_id
    Ingredient.create(name:"#{ingredient_id.strIngredient1}")
  end
end


10.times do |_|
  cocktail = Cocktail.new(name:"#{Faker::Hipster.sentence(3)}")
  cocktail.photo_url = ("http://lorempixel.com/400/300/")
  cocktail.save
  ingredient = Ingredient.all.sample
  dose = Dose.new(description: "#{rand(100)}mL")
  dose.ingredient = ingredient
  dose.cocktail = cocktail
  dose.save
end
