json.array!(@orders) do |order|
  json.extract! order, :id, :custumer, :product, :account_approval, :account_comment, :warehouse_approval, :destination, :current_location, :delivered
  json.url order_url(order, format: :json)
end
