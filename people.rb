class Person
	def initialize(name)
		@name = name
	end

	def greeting
		"Hello my name is #{@name}"
	end

end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
	end
end

student = Student.new("Cristina")
puts student.greeting

instructor = Instructor.new("Chris")
puts instructor.greeting

instructor.teach
student.learn

student.teach

#An error occurs when calling the teach method on student. 
#The reason this happens is because the teach method is a instance method 
#belonging to the class Instructor, which is not the parent class of 
#student. For this reason, you can't call the teach method on student. 
