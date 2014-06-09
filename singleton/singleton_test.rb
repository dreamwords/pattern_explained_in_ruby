require 'test/unit'

class SingletonCounterTest < Test::Unit::TestCase
  def test_singleton
    assert_equal 0, CounterFactory.new_counter.current
    assert_equal 1, CounterFactory.new_counter.increment
    assert_equal 2, CounterFactory.new_counter.increment
    assert_equal 2, CounterFactory.new_counter.current
  end
end