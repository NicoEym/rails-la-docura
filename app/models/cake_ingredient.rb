class CakeIngredient < ApplicationRecord
  belongs_to :customized_cake
  belongs_to :ingredient
end
