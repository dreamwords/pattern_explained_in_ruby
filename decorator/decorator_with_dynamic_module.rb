require 'coffee'

def coffee_decorator(self_ingredient, self_price)
  Module.new do
    define_method :cost do
      super + self_price
    end
    
    define_method :ingredient do
      super + ', ' + self_ingredient
    end    
  end
end

# Dynamic define Cold Module example
Cold = coffee_decorator('Cold', 0.9)

class CoffeeFactory
  def self.new_coffee
    Coffee.new.extend(coffee_decorator("Milk", 0.5)).
               extend(coffee_decorator("Whip", 0.7)).
               extend(coffee_decorator("Sprinkles", 0.2))
  end
end


# run tests
require 'coffee_test'