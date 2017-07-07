class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand
  has_many :ingredients
end
