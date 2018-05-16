require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @next_node = nil
  end

  def append(node)
    @head = Node.new(node) if head.nil?
    node
  end

end
