require 'test/unit'

class DecoratorWithModuleTest < Test::Unit::TestCase
  def test_decorator
    coffee = CoffeeFactory.new_coffee
    # coffee = Coffee.new.extend(Milk).extend(Whip).extend(Sprinkles)
    assert_in_delta 2.4, coffee.cost, 0.0000001
    assert_equal 'Coffee, Milk, Whip, Sprinkles', coffee.ingredient
  end
end