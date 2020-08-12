class RenameCakes < ActiveRecord::Migration[5.2]
  def change
    rename_table :customized_cakes, :cakes
    drop_table :standard_cakes
  end
end
