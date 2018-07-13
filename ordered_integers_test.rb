require 'minitest/autorun'
require './ordered_integers'
require 'pry'

class OrderedTest < Minitest::Test
  def test_it_can_find_things
    assert_equal [3,4], search_range([5,7,7,8,8,10], 8)
  end

  def test_it_can_find_no_things
    assert_equal [-1,-1], search_range([5,7,7,8,8,10], 6)
  end
end
