# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
IngredientCategory.delete_all


user = User.new(

  email: "admin@gmail.com",
  admin: true,
  password:  'adminBolo',
  password_confirmation: 'adminBolo'
)

user.save!

IngredientCategory.create(name: "Massa", how_many_items: 1)
IngredientCategory.create(name: "Recheio", how_many_items: 2)
IngredientCategory.create(name: "Cobertura", how_many_items: 2)
IngredientCategory.create(name: "Decoração",how_many_items: 3)
IngredientCategory.create(name: "Formato do bolo", how_many_items: 1)


