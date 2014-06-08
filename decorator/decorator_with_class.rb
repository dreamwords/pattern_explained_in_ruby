require 'coffee'

module Decorator
  def initialize(decorated)
    @decorated = decorated
  end

  def method_missing(method, *args)
    @decorated.respond_to?(method) ? @decorated.send(method, *args) : super
  end
end

class Milk
  include Decorator

  def cost
    @decorated.cost + 0.5
  end
  
  def ingredient
    @decorated.ingredient + ', ' + 'Milk'
  end
end

class Whip
  include Decorator

  def cost 
    @decorated.cost + 0.7
  end
  
  def ingredient
    @decorated.ingredient + ', ' + 'Whip'
  end  
end

class Sprinkles
  include Decorator

  def cost
    @decorated.cost + 0.2
  end
  
  def ingredient
    @decorated.ingredient + ', ' + 'Sprinkles'
  end  
end

class CoffeeFactory
  def self.new_coffee
    Sprinkles.new(Whip.new(Milk.new(Coffee.new)))
  end
end

require 'coffee_test'