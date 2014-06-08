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

require 'test/unit'

class DecoratorWithModuleTest < Test::Unit::TestCase
  def test_decorator    
    coffee = Coffee.new.extend(coffee_decorator("Milk", 0.5)).
                        extend(coffee_decorator("Whip", 0.7)).
                        extend(coffee_decorator("Sprinkles", 0.2))
                        
    assert_in_delta 2.4, coffee.cost, 0.0000001
    assert_equal 'Coffee, Milk, Whip, Sprinkles', coffee.ingredient
  end
end