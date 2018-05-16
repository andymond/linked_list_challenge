require "./lib/linked_list"
require "minitest/pride"
require "minitest/autorun"
require "pry"

class LinkedListTest < Minitest::Test

  def test_it_initializes_with_no_nodes
    list = LinkedList.new

    assert_nil list.head
  end

end
