json.array!(@products) do |product|
  json.extract! product, :product_name, :unit_price, :product_description, :deleted
  json.url product_url(product, format: :json)
end
