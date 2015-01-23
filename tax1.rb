puts "What did you buy?"
user_input = gets.chomp

user_array = user_input.split(" ")

user_price = user_array[-1].to_f
user_quantity = user_array[0].to_i
user_name = user_array[1] 



class Reader
	attr_accessor :price

def Initialize (quantity, name, price)
	@price = price
	@quantity = quantity
	@name = name

user_array.each do |x|
	if x == "chocolate" || x == "pills" || x == "book" && x == "imported"
		price = price * 1.15
	elsif x == "chocolate" || x == "pills" || x == "book"
		price = price * 1.00
	else
		price == price * 1.10
	end
end


end