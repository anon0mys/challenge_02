require 'minitest/autorun'
require 'minitest/pride'
require './linked_list'

class ListNodeTest < Minitest::Test
  def test_it_can_add_nodes
    list = ListNode.new('first')
    list.add_node('second')
    list.add_node('third')

    assert_equal 'third', list.next.next.val
  end

  def test_it_can_calculate_length
    list = ListNode.new('first')
    list.add_node('second')
    list.add_node('third')

    assert_equal 3, length(list)

    list.add_node('fourth')
    list.add_node('fifth')

    assert_equal 5, length(list)
  end

  def test_it_can_return_node_at_position
    list = ListNode.new('first')
    list.add_node('second')
    list.add_node('third')

    assert_equal 'second', position(list, 2).val

    list.add_node('fourth')
    list.add_node('fifth')

    assert_equal 'fourth', position(list, 4).val
  end

  def test_it_can_remove_nth_from_end
    list = ListNode.new('first')
    list.add_node('second')
    list.add_node('third')

    remove_nth_from_end(list, 2)

    assert_equal 'first', list.val
    assert_equal 'third', list.next.val
  end

  def test_it_can_remove_nth_from_end_longer
    list = ListNode.new('first')
    list.add_node('second')
    list.add_node('third')
    list.add_node('fourth')
    list.add_node('fifth')

    remove_nth_from_end(list, 4)

    assert_equal 'first', list.val
    assert_equal 'third', list.next.val
  end
end
