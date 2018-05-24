#This gets called at the end. Before the intepreter leaves.
at_exit do 
	puts 'Bye'
end

puts 'Something useful'
puts 'Expecting Bye at some point'
puts 'About to exit'

#Note: at_exit can be called multiple times and each block will be called 
# in Last in/First out order
