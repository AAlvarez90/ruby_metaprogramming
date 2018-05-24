class Object

  def method_missing( name_of_method, *args )
    if self.nil?
      raise "You called the method `#{name_of_method}` on NIL idiot!!!"
    else
      raise NameError, "Method `#{name_of_method}` does not exist"
    end
  end
end

a = nil
# b = Object.new
# puts b.hello
puts a.hello
    