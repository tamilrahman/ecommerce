module ProductsHelper
	
	def print_price(price)
		number_to_currency price
	end

	def print_stock(stock)
	  if stock > 0
	  	content_tag(:p, "In Stock", class: "in-stock")
	  else
	  	content_tag(:p, "Sorry! Product is sold out", class: "out-of-stock")
	  end
	end
end
