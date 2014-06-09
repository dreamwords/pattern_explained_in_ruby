# http://ruby-doc.org/stdlib-2.1.2/libdoc/singleton/rdoc/Singleton.html
#
# Singleton module behavour is achieved by
#
# Making Klass.new and Klass.allocate private.
# Overriding Klass.inherited(sub_klass) and Klass.clone() to ensure that the Singleton properties are kept when inherited and cloned.
# Providing the Klass.instance() method that returns the same object each time it is called.
# Overriding Klass._load(str) to call Klass.instance().
# Overriding Klass#clone and Klass#dup to raise TypeErrors to prevent cloning or duping.

require 'singleton'

class Counter
  include Singleton
  
  def initialize
    @count = 0
  end
  
  def current
    @count
  end
  
  def increment
    @count += 1
  end
end

class CounterFactory
  def self.new_counter
    Counter.instance    
  end
end

require 'singleton_test'