class Product < ApplicationRecord
  has_many :product_ingredients
  has_many :ingredients, through: :product_ingredients
end