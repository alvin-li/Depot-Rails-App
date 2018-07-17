json.Orders @product.orders do |order|
  json.order order.id
  json.shipped_to order.address

  json.items order.line_items do |item|
    json.item_name item.product.title
    json.quantity item.quantity
    json.total_price number_to_currency item.total_price
  end

  json.total_price number_to_currency order.line_items.map(&:total_price).sum
  json.pay_type order.pay_type

  json.user order.name
  json.email order.email
end
