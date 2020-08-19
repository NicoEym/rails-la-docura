class CreateCakeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :cake_ingredients do |t|
      t.references :customized_cake, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
