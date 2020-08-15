# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
CakeIngredient.delete_all
Ingredient.delete_all
IngredientCategory.delete_all


user = User.new(

  email: "admin@gmail.com",
  admin: true,
  password:  'adminBolo',
  password_confirmation: 'adminBolo'
)

user.save!

dough = IngredientCategory.create(name: "Massa", how_many_items: 1)
filling = IngredientCategory.create(name: "Recheio", how_many_items: 2)
icing = IngredientCategory.create(name: "Cobertura", how_many_items: 2)
decoration = IngredientCategory.create(name: "Decoração",how_many_items: 3)
shape = IngredientCategory.create(name: "Formato do bolo", how_many_items: 1)


Ingredient.create(name: "Chocolate", ingredient_category: dough)
Ingredient.create(name: "Chocolate branco", ingredient_category: dough)
Ingredient.create(name: "Baunilha", ingredient_category: dough)
Ingredient.create(name: "Cremosa", ingredient_category: dough)
Ingredient.create(name: "Especial", ingredient_category: dough)

Ingredient.create(name: "Morango", ingredient_category: filling)
Ingredient.create(name: "Doce de leite", ingredient_category: filling)
Ingredient.create(name: "Damasco", ingredient_category: filling)
Ingredient.create(name: "Petit Gateau", ingredient_category: filling)
Ingredient.create(name: "Nutella", ingredient_category: filling)
Ingredient.create(name: "Manga", ingredient_category: filling)
Ingredient.create(name: "Especial La'Docura", ingredient_category: filling)

Ingredient.create(name: "Açucar", ingredient_category: icing)
Ingredient.create(name: "Chocolate Branco", ingredient_category: icing)
Ingredient.create(name: "Mousse de Limão", ingredient_category: icing)
Ingredient.create(name: "Côco", ingredient_category: icing)


Ingredient.create(name: "Especial", ingredient_category: decoration)
Ingredient.create(name: "Bonita", ingredient_category: decoration)
Ingredient.create(name: "Verão", ingredient_category: decoration)

Ingredient.create(name: "Quadrado", ingredient_category: shape)
Ingredient.create(name: "Redondo", ingredient_category: shape)
Ingredient.create(name: "Triangulo", ingredient_category: shape)
