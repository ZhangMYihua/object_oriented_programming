puts "What is the size of the plateau?"
area = gets.chomp
puts "Where is the first rover?"
position1 = gets.chomp
puts "What do you want the first rover to do?"
directions1 = gets.chomp

position1_array = position1.split(" ")


class Rover
	attr_accessor :x, :y, :direction

	def initialize(x, y, d)
		@x = x
		@y = y
		@d = d
	end 

	def read_intruction
	end
end


#first input, what is the size of the plateau (x, y)
#second input, where does the rover start and where is it facing (x, y, D)
#