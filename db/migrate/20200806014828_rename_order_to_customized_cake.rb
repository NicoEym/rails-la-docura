class RenameOrderToCustomizedCake < ActiveRecord::Migration[5.2]
  def change
    rename_table :orders, :customized_cakes
  end
end
