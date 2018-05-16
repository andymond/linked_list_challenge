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

  def prepend(node)
    @count += 1
    temp_node = @head
    @head = Node.new(node)
    @head.next_node = temp_node
    node
  end

  def insert(index, node)
    @count += 1
    current_node = @head
    unless index <= 0
      (index - 1).times do
        current_node = current_node.next_node
      end
    end
    temp_node = current_node.next_node
    current_node.next_node = Node.new(node)
    current_node.next_node.next_node = temp_node
    node
  end

  def pop
    @count -= 1
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    popped = current_node.next_node.data
    current_node.next_node = nil
    popped
  end

end
