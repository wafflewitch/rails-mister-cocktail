# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
singular = ["unicorn", "vampire", "mermaid", "centaur", "goblin", "werewolf", "wizard", "sugar", "chocolate", "caramel", "hazelnut", "vanilla", "strawberry", "awesome", "rainbow", "happiness", "sadness"]
plural = ["blood", "tears", "breath", "essence", "sauce", "flavoring", "sprinkles", "powder", "magic"]

25.times do
  ingredient = Ingredient.create(name: "#{singular.sample} #{plural.sample}")
  p ingredient
end

ingredient = Ingredient.create(name: "awesome sauce")
# p ingredient
ingredient = Ingredient.create(name: "unicorn tears")
# p ingredient
ingredient = Ingredient.create(name: "vampire blood")
# p ingredient
ingredient = Ingredient.create(name: "magic sprinkles")
# p ingredient
ingredient = Ingredient.create(name: "magic powder")
# p ingredient
ingredient = Ingredient.create(name: "vanilla essence")
# p ingredient
ingredient = Ingredient.create(name: "vanilla flavoring")
# p ingredient
ingredient = Ingredient.create(name: "caramel sauce")
# p ingredient
ingredient = Ingredient.create(name: "caramel flavoring")
# p ingredient
ingredient = Ingredient.create(name: "rainbow sprinkles")
# p ingredient
ingredient = Ingredient.create(name: "rainbow magic")
# p ingredient
ingredient = Ingredient.create(name: "rainbow sauce")
# p ingredient
