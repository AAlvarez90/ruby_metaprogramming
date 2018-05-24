class Object
  def self.const_missing( const )
    require_relative "support/#{const.to_s.downcase}.rb"
    raise 'Const #{const} not found' unless const_defined?(const)
    const_get(const)
  end
end

a = Sample.new
a.say_hello