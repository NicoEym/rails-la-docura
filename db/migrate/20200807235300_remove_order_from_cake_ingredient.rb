class RemoveOrderFromCakeIngredient < ActiveRecord::Migration[5.2]
  def change
    rename_column :cake_ingredients, :order_id, :customized_cake_id
  end
end
