# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
9.times do |i|
    Recipe.create(
      name: "Recipe #{i + 1}",
      ingredients: '227g tub clotted cream, 25g butter, 1 tsp cornflour,100g parmesan, grated nutmeg, 250g fresh fettuccine or tagliatelle, snipped chives or chopped parsley to serve (optional)',
      instruction: 'In a medium saucepan, stir the clotted cream, butter and cornflour over a low-ish heat and bring to a low simmer. Turn off the heat and keep warm.'
    )
  end
  appetizer = Category.create(name: 'Appetizer')
breakfast = Category.create(name: 'Breakfast & Brunch')
chicken = Category.create(name: 'Chicken')
desserts = Category.create(name: 'Desserts')
healthy = Category.create(name: 'Healthy')
main = Category.create(name: 'Main Dish')
pasta = Category.create(name: 'Pasta')
salad = Category.create(name: 'Salad')
slow_cooker = Category.create(name: 'Slow Cooker')
vegetarian = Category.create(name: 'Vegetarian')

spaghetti = Recipe.create(name: 'Spaghetti Bolognaise', instructions: 'Cook bolognaise.  Add pasta.  Mix.  Serve.', user: bob)
spaghetti.categories << main
spaghetti.categories << pasta

chicken_cordon_bleu = Recipe.create(name: 'Chicken Cordon Bleu', instructions: 'Cook chicken.  Add cordon.  Stir in bleu.  Bake and serve.', user: bob)
chicken_cordon_bleu.categories << main
chicken_cordon_bleu.categories << chicken

spinach_salad = Recipe.create(name: 'Spinach Salad', instructions: 'Put lots of spinach in a bowl.  Add salad dressing (optional).', user: steve)
spinach_salad.categories << appetizer
spinach_salad.categories << healthy
spinach_salad.categories << vegetarian

chocolate_cake = Recipe.create(name: 'Chocolate Cake', instructions: 'Open chocolate cake packet.  Follow instructions on packet.  Add candles (optional).', user: steve)
chocolate_cake.categories << desserts

sushi = Recipe.create(name: 'Sushi', instructions: 'Boil rice.  Add fish, cucumber, seaweed (all optional).  Roll, cut and serve.', user: dave)
sushi.categories << healthy
sushi.categories << appetizer