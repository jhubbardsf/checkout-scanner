class PricingRules
	def initialize
		@products = []
	end

	def find_product(code)
		@products.select { |i| i.product_code == code }.first
	end

	def add(product)
		@products << product
	end

	def delete(product_code)
		@products.reject! { |h| h[:product_code] == product_code}
	end
end