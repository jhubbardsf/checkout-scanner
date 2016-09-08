#!/usr/bin/env ruby

Dir["./lib/*.rb"].each {|file| require file }
Dir["./models/*.rb"].each {|file| require file }

@pricing_rules = create_pricing_rules
print 'Basket: '
new_items = gets.chomp

co = Checkout.new(@pricing_rules)
new_items = new_items.delete(' ').split(',')
new_items.each do |item|
  co.scan(item)
end
print "Total cost expected: $#{('%.2f' % co.total)} \n\r"