class Example

  def method_missing( name_of_method, *args)
    msg = %Q{
      You tried to call this method: #{name_of_method}
      with arguments (#{ args.join(' ')})
      but it doesn't exist.
    }
    raise msg
  end
end

example = Example.new

example.hello(1,2,43)