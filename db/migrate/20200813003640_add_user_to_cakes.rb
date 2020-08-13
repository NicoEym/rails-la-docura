class AddUserToCakes < ActiveRecord::Migration[5.2]
  def change
    add_reference :cakes, :user, foreign_key: true
  end
end
