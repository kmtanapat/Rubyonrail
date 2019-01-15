json.array! @products, partial: 'products/product', as: :product
json.array!(@products) do |pro|
  json.name        pro.name
  json.volumn      pro.volumn
  json.cost        number_to_currency(pro.cost)
  json.price       pro.price
end