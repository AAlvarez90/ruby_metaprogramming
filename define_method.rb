class Person
  attr_accessor :first, :last
  
  def self.create_initialize
    define_method :initialize do |first, last|
      @first = first
      @last = last
    end
  end

  def self.create_full_name_on_the_fly
    define_method :full_name do
      @first + ' ' + @last
    end
  end

  create_initialize
end

me = Person.new('Abraham', 'Alvarez')
Person.create_full_name_on_the_fly
puts me.full_name