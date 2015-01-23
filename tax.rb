puts "What did you buy?"



class Item
	attr_accessor :quantity, :name, :price, :type_of_tax, :tax, :holder

	def initialize(name, type_of_tax, quantity, price, holder)
		@quantity = quantity
		@name = name
		@type_of_tax = type_of_tax 
		@price = price
		@tax = 0
		@holder = holder
	end

	def tax
		if @type_of_tax == ""
			@tax = (@quantity * @price * 0.10)
		elsif @type_of_tax == "imported"
			@tax = (@quantity * @price * 0.15)
		elsif @type_of_tax == "exempt"
			@tax = (@quantity * @price)
		end 

	end

	def list_item

		if type_of_tax == "" && holder == ""
			puts "#{quantity} #{name}: #{'%.2f' % price}"
		elsif type_of_tax == "" && container != ""
			puts "#{quantity} #{holder} of #{type_of_tax} #{name}: #{'%.2f' % price}"
		else 
			puts "#{quantity} #{type_of_tax} #{holder} of #{name}: #{'%.2f' % price}"
		end
	end
end





class Receipt
	attr_accessor :sales_tax
	attr_accessor :prices
	attr_accessor :total

	def initialize(prices, sales_tax)
		@sales_tax = sales_tax
		@prices= prices
		@total = 0
	end

	def list_receipt
		list_sales_tax
	end

	def list_sales_tax
		taxes = sales_tax.inject{|sum, tax| sum + tax}
		taxes = (taxes * 20).ceil / 20.0
		puts "Sales Taxes: #{'%.2f' % taxes}"
		list_total(taxes)
	end

	def list_total(taxes)
		total = prices.inject{|sum, price| sum + price} + taxes
		total = (total * 20).ceil / 20.0
		puts "Total: $#{ '%.2f' % total}"
	end
end


# Input 1
book = Item.new("book", "", 1, 12.49, "")
chocolate_bar = Item.new("chocolate bar", "", 1, 0.85, "")
music_cd = Item.new("music CD", "", 1, 16.99, "")

# Receipt 1

book.list_item
music_cd.list_item
chocolate_bar.list_item

prices1 = [book.price, chocolate_bar.price, music_cd.price]
taxes1 = [book.tax, chocolate_bar.tax, music_cd.tax]

receipt1 = Receipt.new(prices1, taxes1)
receipt1.list_receipt



# Input 2
chocolates = Item.new("chocolates", "imported", 1, 10.00, "box")
perfume1 = Item.new("perfume", "imported", 1, 47.50, "bottle")


# Receipt 2
puts
chocolates.list_item
perfume1.list_item

prices2 = [chocolates.price, perfume1.price]
taxes2 = [chocolates.tax, perfume1.tax]

receipt2 = Receipt.new(prices1, taxes1)
receipt2.list_receipt


# Input 3
perfume2 = Item.new("perfume", "imported", 1, 27.99, "bottle")
perfume3 = Item.new("perfume", "imported", 1, 18.99, "bottle")
headache = Item.new("headache pills", "imported", 1, 19.75, "packet")
chocolates2 = Item.new("chocolates", "imported", 1, 11.25, "box")


prices3 = [perfume2.price, perfume3.price, headache.price, chocolates2.price]
taxes3 = [perfume2.tax, perfume3.tax, headache.tax, chocolates2.tax]

puts
perfume2.list_item
perfume3.list_item
headache.list_item
chocolates2.list_item


receipt3 = Receipt.new(prices3, taxes3)
receipt3.list_receipt





