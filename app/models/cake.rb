class Cake < ApplicationRecord
  has_many :cake_ingredients, dependent: :destroy
  has_many :ingredients, through: :cake_ingredients
  accepts_nested_attributes_for :cake_ingredients, allow_destroy: true
  belongs_to :user
  has_one_attached :photo
end
