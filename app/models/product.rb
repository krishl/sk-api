class Product < ApplicationRecord
  has_many :product_ingredients
  has_many :ingredients, through: :product_ingredients

  def ings=(string)
    ingredients = string.split(/\s*,\s*/)
    ingredients.each do |ingredient|
      new_ingredient = Ingredient.find_or_create_by(name: ingredient)
      self.ingredients << new_ingredient
    end
  end
end
