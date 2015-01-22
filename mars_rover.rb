class Rover
	attr_accessor :x, :y, :d

	def initialize(x, y, d)
		@x = x
		@y = y
		@d = d
	end 

	def read_instructions(instructions)
		instructions.each do |a|
			if a == "M"
				then move
			elsif a == "L" || a == "R"
				then turn(a)
			end
		end
	end

	def turn(turn_dir)
		if @d == "N" && turn_dir == "L" then @d = "W"
			elsif @d == "N" && turn_dir == "R" then @d = "E"
			elsif @d == "W" && turn_dir == "L" then @d = "S"
			elsif @d == "W" && turn_dir == "R" then @d = "N"
			elsif @d == "E" && turn_dir == "L" then @d = "N"
			elsif @d == "E" && turn_dir == "R" then @d = "S"
			elsif @d == "S" && turn_dir == "L" then @d = "E"
			elsif @d == "S" && turn_dir == "R" then @d = "W"
		end
	end
 			
	def move
		if @d == "N" then @y += 1
		elsif @d == "S" then @y -= 1
		elsif @d == "E" then @x += 1
		elsif @d == "W" then @x -= 1
	end
	end

	def to_s
		puts "#{@x} #{@y} #{@d}"
	end

end


puts "What is the size of the plateau?"
area = gets.chomp
puts "Where is the first rover?"
position1 = gets.chomp
puts "What do you want the first rover to do?"
read_instructions1 = gets.chomp

position1_array = position1.split(" ")

read_instructions1_array = read_instructions1.split("")


rover1 = Rover.new(position1_array[0].to_i, position1_array[1].to_i, position1_array[2])

rover1.read_instructions(read_instructions1_array)
rover1.to_s


puts "Where is the second rover?"
position2 = gets.chomp
puts "What do you want the second rover to do?"
read_instructions2 = gets.chomp

position2_array = position2.split(" ")
read_instructions2_array = read_instructions2.split("")

rover2 = Rover.new(position2_array[0].to_i, position2_array[1].to_i, position2_array[2])

rover2.read_instructions(read_instructions2_array)
rover2.to_s

	def move
		if @d == "N" then @y += 1
		elsif @d == "S" then @y -= 1
		elsif @d == "E" then @x += 1
		elsif @d == "W" then @x -= 1
	end
	end










#first input, what is the size of the plateau (x, y)
#second input, where does the rover start and where is it facing (x, y, D)
#