#Hook used to track subclasses


class MasterClass
	@@children = []

	def self.children
		@@children
	end

	def self.inherited( new_sub_class )
		puts "New Subclass registered: #{new_sub_class}"
		@@children << new_sub_class
	end
end

class ChildClass < MasterClass

end

class ChildClass2 < MasterClass
end

class AnotherChild < MasterClass
end

puts MasterClass.children




