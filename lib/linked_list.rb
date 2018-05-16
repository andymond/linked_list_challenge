require "./lib/node"

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(node)
    @count += 1
    current_node = @head
    if current_node.nil?
      @head = Node.new(node)
    else
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(node)
    end
    node
  end

  def to_s
    data = []
    current_node = @head
    until current_node.nil?
      data << current_node.data
      current_node = current_node.next_node
    end
    data.join
  end

end
