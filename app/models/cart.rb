class Cart < ApplicationRecord
  belongs_to :user
  has_many :cakes, through: :cart_cakes
end
