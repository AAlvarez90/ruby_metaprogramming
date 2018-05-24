class Person

  def self.create_new_attribute( name )

    code = %Q{
      attr_accessor :#{name}
    }

    class_eval( code )
  end

  def self.create_method_full_name

    code = %Q{
      def full_name
        @first_name + ' ' + @last_name
      end
    }
    class_eval code 
  end
end

Person.create_new_attribute( 'first_name' )
Person.create_new_attribute( 'last_name' )
Person.create_method_full_name

p = Person.new
p.first_name = 'Abraham'
p.last_name = 'Alvarez'
puts p.full_name

#Create on the flight
code = %Q{
  def say_hello
    puts 'Hello'
  end
}

p.class.class_eval( code )

p.say_hello