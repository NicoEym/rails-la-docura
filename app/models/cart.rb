class Cart < ApplicationRecord
  belongs_to :user
  has_many :cakes, through: :cart_cakes

  def total_price
    cakes.to_a.sum(&:price)
  end

  def add_cake(cake)
    this_cake = cart.cakes.find_by(cake: cake)

    if this_cake
      # increase the quantity of product in cart
      this_cake.quantity + 1
      save
    else
      # product does not exist in this cart
      cart.cakes << cake
    end
    save
  end
end
