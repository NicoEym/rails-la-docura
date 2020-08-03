class CreateOrderIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :order_ingredients do |t|
      t.references :order, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
