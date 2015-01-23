puts "What did you buy?"
user_input = gets.chomp

user_array = user_input.split(" ")

user_price = user_array[-1].to_f
user_quantity = user_array[0].to_i
user_name = user_array[1] 



class Reader
	attr_accessor :price, :name, :quantity

def Initialize (item)
	@price = price
	@quantity = quantity
	@name = name
	@tax = 0
	@tax_type = tax_type
end 

def calculate_tax
	if @name == 


 
user_price = user_array[-1].to_f
user_quantity = user_array[0].to_i
user_name = user_array[1] 


def read
	if @name == "chocolate" || @name == "pills" || @name == "book" && @name == "imported"
		 @price = @price * 1.05
	elsif @name == "chocolate" || @name == "pills" || @name == "book"
		@price = @price * 1.00
	else
		@price == @price * 1.10
	end
end


end

class Item

def Initialize (quantity, name, price)
	@quantity = quantity
	@name = name
	@price = price
end

end


item1 = Item.new(user_array[0].to_i, user_array[1], user_array[-1])
