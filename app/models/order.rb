class Order < ApplicationRecord
  belongs_to :user
  has_many :cakes, through: :order_cakes
end
