class RenameCakeToStandardCake < ActiveRecord::Migration[5.2]
  def change
    rename_table :cakes, :standard_cakes
  end
end
