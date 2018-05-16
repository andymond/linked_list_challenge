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

  def test_it_can_stringify_node_data
    list = LinkedList.new

    list.append(3)
    list.append(3)
    list.append(3)

    assert_equal "333", list.to_s

    list.append(21)

    assert_equal "33321", list.to_s
  end

  def test_it_can_prepend_node
    list = LinkedList.new

    assert_equal 3, list.prepend(3)
    assert_equal 3, list.head
    assert_equal 21, list.prepend(21)
    assert_equal 21, list.head
  end

end
