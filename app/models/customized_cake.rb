class CustomizedCake < ApplicationRecord
  has_many :ingredients, through: :cake_ingredients
end
