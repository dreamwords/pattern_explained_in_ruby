# :-) Always Thinking in Module when using Ruby
# Module cannot be can't be instantiated, very suitable for doing the job

module Counter
  @count = 0
    
  def self.current
    @count
  end
  
  def self.increment
    @count += 1
  end
end

class CounterFactory
  def self.new_counter
    Counter    
  end
end

require 'singleton_test'