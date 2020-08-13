class AddMenuToCakes < ActiveRecord::Migration[5.2]
  def change
    add_column :cakes, :on_the_menu, :boolean
  end
end
