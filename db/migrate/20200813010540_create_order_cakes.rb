class CreateOrderCakes < ActiveRecord::Migration[5.2]
  def change
    create_table :order_cakes do |t|
      t.references :cake, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
