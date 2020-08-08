class CustomizedCake < ApplicationRecord
  has_many :ingredients, through: :cake_ingredients
  accepts_nested_attributes_for :cake_ingredients, allow_destroy: true
end
