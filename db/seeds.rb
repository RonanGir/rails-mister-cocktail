require 'open-uri'
require 'json'


Ingredient.destroy_all
Cocktail.destroy_all

url         = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)["drinks"]

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

blackrussian = Cocktail.create(name: "Black Russian")
bloodymarry  = Cocktail.create(name: "Bloody Marry")
mojito       = Cocktail.create(name: "Mojito")
longisland   = Cocktail.create(name: "Long Island")
sangria      = Cocktail.create(name: "Sangria")
vinchaud     = Cocktail.create(name: "Vin chaud")



