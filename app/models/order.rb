class Order < ApplicationRecord
  has_many :ingredients, through: :order_ingredients
end
