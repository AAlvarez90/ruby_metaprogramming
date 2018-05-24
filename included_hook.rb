module UsefulStuff

	def self.included( klass )
		puts "New class has included UsefulStuff: #{klass}"
	end
end

class SomethingUseful
	include UsefulStuff
end


#Use: Making the host class extend class methods:

module UsefulThings

	module ClassMethods
		def useful_class_method
		end
	end

	def self.included ( klass )
		klass.extend ( ClassMethods )
	end

	def some_instance_method
	end
end

class UsefulClass
	include UsefulThings
end
