json.product do
  json.id @product.id
  json.name @product.name
  json.brand @product.brand
  json.ingredients @product.ingredients do |ingredient|
    json.id ingredient.id
    json.name ingredient.name
  end
end