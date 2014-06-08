require 'coffee'

module Milk
  def cost
    super + 0.5
  end
  
  def ingredient
    super + ', ' + 'Milk'
  end
end

module Whip
  def cost
    super + 0.7
  end
  
  def ingredient
    super + ', ' + 'Whip'
  end
end

module Sprinkles
  def cost
    super + 0.2
  end
  
  def ingredient
    super + ', ' + 'Sprinkles'
  end  
end



require 'test/unit'

class DecoratorWithModuleTest < Test::Unit::TestCase
  def test_decorator
    coffee = Coffee.new.extend(Milk).extend(Whip).extend(Sprinkles)
    assert_in_delta 2.4, coffee.cost, 0.0000001
    assert_equal 'Coffee, Milk, Whip, Sprinkles', coffee.ingredient
  end
end