class ProductIngredientSerializer < ActiveModel::Serializer
  attributes :id, :product, :ingredient
  belongs_to :product
  belongs_to :ingredient
end
