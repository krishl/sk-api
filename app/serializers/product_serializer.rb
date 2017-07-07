class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand
  has_many :ingredients
  has_many :product_ingredients
end
