class CreateCustomizedCakes < ActiveRecord::Migration[5.2]
  def change
    create_table :customized_cakes do |t|
      t.float :price
      t.string :size
      t.boolean :validated, default: false, null: false

      t.timestamps
    end
  end
end
