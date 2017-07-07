# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
part_one = ["unicorn", "vampire", "mermaid", "fairy", "centaur", "goblin", "werewolf", "wizard", "sugar", "chocolate", "caramel", "hazelnut", "vanilla", "strawberry", "rainbow", "happiness", "sadness"]
part_two = ["blood", "tears", "breath", "essence", "sauce", "flavoring", "sprinkles", "powder", "magic"]

part_one.each do |one|
  part_two.each do |two|
    Ingredient.create(name: one + " " + two)
  end
end
