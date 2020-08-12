class RenameCustomizedCakeId < ActiveRecord::Migration[5.2]
  def change
    rename_column :cake_ingredients, :customized_cake_id, :cake_id
  end
end
