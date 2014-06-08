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


class CoffeeFactory
  def self.new_coffee
    Coffee.new.extend(Milk).extend(Whip).extend(Sprinkles)
  end
end


# run tests
require 'coffee_test'