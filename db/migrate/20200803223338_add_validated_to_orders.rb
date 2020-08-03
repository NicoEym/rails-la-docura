class AddValidatedToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :validated, :boolean, default: false, null: false
  end
end
