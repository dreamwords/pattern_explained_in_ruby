# Why need a class???
# Object is just enough
# Object Oriented instead of Class Oriented (C++, Java etc...)

Counter = Object.new
Counter.instance_eval do
  @count = 0

  def current
    @count
  end
  
  def increment
    @count += 1
  end
end

class CounterFactory
  def self.new_counter
    Counter
  end
end

require 'singleton_test'