# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#




CakeIngredient.delete_all
Cake.delete_all
User.delete_all
Ingredient.delete_all
IngredientCategory.delete_all


user = User.new(

  email: "admin@gmail.com",
  admin: true,
  password:  'adminBolo',
  password_confirmation: 'adminBolo'
)

user.save!

user = User.new(

  email: "convidado@gmail.com",
  admin: false,
  password:  'convidado',
  password_confirmation: 'convidado'
)

user.save!

dough = IngredientCategory.create(name: "Massa", how_many_items: 1)
filling = IngredientCategory.create(name: "Recheio", how_many_items: 2)
icing = IngredientCategory.create(name: "Cobertura", how_many_items: 2)
decoration = IngredientCategory.create(name: "Decoração",how_many_items: 1)
shape = IngredientCategory.create(name: "Formato do bolo", how_many_items: 1)


Ingredient.create(name: "Chocolate", ingredient_category: dough)
Ingredient.create(name: "Pão de Ló", ingredient_category: dough)
Ingredient.create(name: "Genoise", ingredient_category: dough)
Ingredient.create(name: "Chiffon", ingredient_category: dough)
Ingredient.create(name: "Amanteigada", ingredient_category: dough)

Ingredient.create(name: "Morango", ingredient_category: filling)
Ingredient.create(name: "Doce de leite", ingredient_category: filling)
Ingredient.create(name: "Leitininho", ingredient_category: filling)
Ingredient.create(name: "Chocolate", ingredient_category: filling)
Ingredient.create(name: "Nutella", ingredient_category: filling)
Ingredient.create(name: "Manga", ingredient_category: filling)
Ingredient.create(name: "Especial La'Docura", ingredient_category: filling)

Ingredient.create(name: "Brigadeiro", ingredient_category: icing)
Ingredient.create(name: "Trufado", ingredient_category: icing)
Ingredient.create(name: "Nutella", ingredient_category: icing)
Ingredient.create(name: "Côco", ingredient_category: icing)


Ingredient.create(name: "Infantil Masculino", ingredient_category: decoration)
Ingredient.create(name: "Infantil Feminino", ingredient_category: decoration)
Ingredient.create(name: "Personagens", ingredient_category: decoration)
Ingredient.create(name: "Casamento", ingredient_category: decoration)

Ingredient.create(name: "Retangular", ingredient_category: shape)
Ingredient.create(name: "Redondo", ingredient_category: shape)
Ingredient.create(name: "Quadrado", ingredient_category: shape)
Ingredient.create(name: "Dois andares", ingredient_category: shape)
