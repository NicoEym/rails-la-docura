class Ingredient < ApplicationRecord
  belongs_to :ingredient_category

  def self.all_dough_type
    dough = IngredientCategory.find_by(name: "Massa")
    self.where(ingredient_category: dough)
  end

  def self.all_filling_type
    filling = IngredientCategory.find_by(name: "Recheio")
    self.where(ingredient_category: filling)
  end

  def self.all_icing_type
    icing = IngredientCategory.find_by(name: "Cobertura")
    self.where(ingredient_category: icing)
  end

  def self.all_decoration_type
    decoration = IngredientCategory.find_by(name: "Decoração")
    self.where(ingredient_category: decoration)
  end

  def self.all_shape_type
    shape = IngredientCategory.find_by(name: "Formato do bolo")
    self.where(ingredient_category: shape)
  end


  def self.number_of_possible_items

  end
end
