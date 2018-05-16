require "./lib/linked_list"
require "minitest/pride"
require "minitest/autorun"
require "pry"

class LinkedListTest < Minitest::Test

  def test_it_initializes_with_no_nodes
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_can_append_node
    list = LinkedList.new

    assert_equal 5, list.append(5)
    assert_instance_of Node, list.head
    assert_equal 5, list.head.data
    assert_nil list.head.next_node
    assert_equal 1, list.count

    assert_equal 4, list.append(4)
    assert_instance_of Node, list.head.next_node
    assert_equal 4, list.head.next_node.data
    assert_equal 2, list.count

    assert_equal 3, list.append(3)
    assert_instance_of Node, list.head.next_node.next_node
    assert_equal 3, list.head.next_node.next_node.data
    assert_equal 3, list.count
  end

end
