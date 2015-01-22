puts "What did you buy?"



class Item
	attr_accessor :quantity, :type, :price

	def initialize(quantity, type, import, price)
		@quantity = quantity
		@type = type
		@import = import
		@price = price
	end

	if @quantity.to_i >= 1 
		tax
	end

	def tax
		if type == "taxable" && import == "yes" then @price *= 1.15
		elsif type == "taxable" && import =="no" then @price *= 1.10
		elsif type == "non_taxable" && import =="yes" then @price *= 1.05
		elsif type == "non_taxable" && import =="no" then @price *= 1.00
		end
	end

	def to_s
		puts "#{@price}"
	end



end
	
book = Item.new(1, "taxable", "yes", 12.50)
book.to_s

