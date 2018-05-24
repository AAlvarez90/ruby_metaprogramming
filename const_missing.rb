#Method that gets triggered when a constant is missing

class Example

  def self.const_missing( const_name )
    msg = %Q{
      Constant is missing: #{const_name}
    }
    raise msg
  end
end

puts Example::HELLO
