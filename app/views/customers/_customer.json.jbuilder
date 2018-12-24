json.extract! customer, :id, :name, :house_num, :build, :group, :road, :district, :township, :city, :mail, :tel, :created_at, :updated_at
json.url customer_url(customer, format: :json)
