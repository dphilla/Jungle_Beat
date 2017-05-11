require_relative "node"


class LinkedList
    attr_reader :head,
                :node

  def initialize
    @head = node
  end

  def append(beat)
    if head.nil?
      @head = Node.new(beat)
    else
      this_node = @head
      until this_node.next_node.nil?
        this_node = this_node.next_node
      end
      this_node.next_node = Node.new(beat)
    end
    beat
  end

  def count
    if @head == nil
      count = 0
    else
      this_node = @head.next_node
      count = 1
      until this_node.nil?
          count += 1
          this_node = this_node.next_node
        end
    end
    count
  end

  def to_string
    string = ""
    string << @head.data
    this_node = @head.next_node
    until this_node.nil?
      string << " " + this_node.data
      this_node = this_node.next_node
    end
    string
  end

  def prepend(beat)
      if @head.nil?
        @head = Node.new(beat)
      else
        local_head = @head
        @head = Node.new(beat)
        @head.next_node = local_head
      end
  end

  def insert(position, beat)
      if position > count
        p "position does not exist"
      else this_node = @head
      count = 1
        until count == position
          this_node = this_node.next_node
          count += 1
        end
      node_to_insert = Node.new(beat)
      node_to_insert.next_node = this_node.next_node
      this_node.next_node = node_to_insert
      beat
      end
    end


end