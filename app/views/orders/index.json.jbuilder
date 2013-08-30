json.array!(@orders) do |order|
  json.extract! order, :location_id, :performer_id, :duration_id, :quality_id, :delivery_id, :category_id
  json.url order_url(order, format: :json)
end
