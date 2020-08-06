class RenameOrderIngredientToCakeIngredient < ActiveRecord::Migration[5.2]
  def change
    rename_table :order_ingredients, :cake_ingredients
  end
end
