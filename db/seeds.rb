# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_serialized = open(url).read
repos = JSON.parse(ingredient_serialized)


repos["drinks"].each do |ingredient|
  ing = Ingredient.new(name: ingredient["strIngredient1"])
  ing.save!
end


Cocktail.create!(name: "Mojito" )
Cocktail.create!(name: "Martini")
Cocktail.create!(name: "Pina Colada" )
Cocktail.create!(name: "Caipirinha" )
Cocktail.create!(name: "Margarita")
Cocktail.create!(name: "Spritz" )
Cocktail.create!(name: "Sex on the beach")
Cocktail.create!(name: "Sangria")

