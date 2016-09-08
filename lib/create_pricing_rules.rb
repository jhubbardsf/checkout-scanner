def create_pricing_rules
	# (product_code, name, price, discount_type, discount_price, amount_for_discount)
	@pricing_rules = PricingRules.new
	p1 = Product.new('FR1', 'Fruit tea', 3.11, :buy_one_get_one, nil, nil)
	p2 = Product.new('AP1', 'Apple', 5.00, :multiple, 4.50, 3)
	p3 = Product.new('CF1', 'Coffee', 11.23, nil, nil, nil)

	@pricing_rules.add(p1)
	@pricing_rules.add(p2)
	@pricing_rules.add(p3)

	@pricing_rules
end