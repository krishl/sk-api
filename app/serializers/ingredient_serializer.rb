class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :products
  has_many :product_ingredients
end
