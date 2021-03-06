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
    assert_equal 3, list.head.data
    assert_equal 1, list.count
    assert_equal 21, list.prepend(21)
    assert_equal 21, list.head.data
    assert_equal 3, list.head.next_node.data
    assert_equal 2, list.count
  end

  def test_it_can_insert_a_node_at_an_index
    list = LinkedList.new

    list.append(3)
    list.append(3)
    list.append(3)

    assert_equal "333", list.to_s

    assert_equal 8, list.insert(1, 8)

    assert_equal "3833", list.to_s
    assert_equal 4, list.count
  end

  def test_it_can_pop_node_off
    list = LinkedList.new

    list.append(3)
    list.append(3)
    list.append(4)

    assert_equal 4, list.pop
    assert_equal 2, list.count
    assert_equal "33", list.to_s
  end

  def test_it_can_shift_node_off
    list = LinkedList.new

    list.append(3)
    list.append(3)
    list.append(4)

    assert_equal 3, list.shift
    assert_equal 2, list.count
    assert_equal "34", list.to_s
  end

  def test_it_can_sort_itself
    list = LinkedList.new

    list.append(3)
    list.append(1)
    list.append(4)
    list.append(2)

    list.sort

    assert_equal "1234", list.to_s
  end

end
