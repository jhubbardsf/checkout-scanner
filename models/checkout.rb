class Checkout
	def initialize(pricing_rules)
		@pricing_rules = pricing_rules
		@items = []
	end

	def scan(item)
		product = @pricing_rules.find_product(item)
		@items << product
	end

	def total
		cost = 0
		@items_duplicate = @items.dup

		@items.each do |item|
			amount = @items_duplicate.count(item)
			if item.discount_type == :buy_one_get_one
				cost += (amount/2.0).ceil * item.price
			elsif item.discount_type == :multiple && amount >= item.amount_for_discount
				cost += amount * item.discount_price
			else
				cost += amount * item.price
			end

			@items_duplicate.delete_if { |i| i.product_code == item.product_code}
		end

		cost
	end
end