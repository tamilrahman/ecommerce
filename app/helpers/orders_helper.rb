module OrdersHelper
	def subtotal(order)
		list_price = []
  	order.order_items.each do |item|
  		list_price << item.product.price
  	end
  	price = 0
		list_price.each { |a| price+=a }
		return price
  end
end
