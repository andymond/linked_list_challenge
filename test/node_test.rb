require "./lib/node"
require "minitest/pride"
require "minitest/autorun"
require "pry"

class NodeTest < Minitest::Test

  def test_it_initializes_with_data
    node = Node.new(5)

    assert_equal 5, node.data
  end

  def test_it_initializes_with_nil_next_node
    node = Node.new(5)

    assert_nil node.next_node
  end
end
