class Product
	attr_reader :amount_for_discount, :discount_price, :discount_type, :price, :product_code, :name

	def initialize(product_code, name, price, discount_type, discount_price, amount_for_discount)
		@product_code = product_code
		@name = name
		@price = price
		@discount_type = discount_type
		@discount_price = discount_price
		@amount_for_discount = amount_for_discount
	end
end