json.extract! product, :id, :name, :product_type, :created_at, :updated_at
json.url product_url(product, format: :json)
