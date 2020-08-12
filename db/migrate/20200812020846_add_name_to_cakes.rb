class AddNameToCakes < ActiveRecord::Migration[5.2]
  def change
    add_column :cakes, :name, :string
    add_column :cakes, :image_url, :string
  end
end
