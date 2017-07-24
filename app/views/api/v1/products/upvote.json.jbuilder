json.products @products do |product|
  json.id product.id
  json.name product.name
  json.brand product.brand
  json.upvote product.upvote
  json.ingredients product.ingredients do |ingredient|
    json.id ingredient.id
    json.name ingredient.name
  end
end