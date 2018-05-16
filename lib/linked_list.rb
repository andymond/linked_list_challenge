require "./lib/node"

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @next_node = nil
    @count = 0
  end

  def append(node)
    @count += 1
    @head = Node.new(node) if head.nil?
    node
  end

end
