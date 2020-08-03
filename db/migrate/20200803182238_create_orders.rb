class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :delivery_date
      t.float :price
      t.string :size

      t.timestamps
    end
  end
end
