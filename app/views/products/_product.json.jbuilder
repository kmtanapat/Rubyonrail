json.extract! product, :id, :name, :details, :volumn, :quantity, :cost, :price, :sell_date, :created_at, :updated_at
json.url product_url(product, format: :json)
