#lib/new_ruby.rb
#AI helped me get the code from python --> ruby
class Node
  attr_accessor :element, :next

  def initialize(element)
    @element = element
    @next = nil
  end
end

class Stack
  def initialize
    @stack = nil
  end

  def push(element)
    if @stack.nil?
      @stack = Node.new(element)
    else
      new_node = Node.new(element)
      new_node.next = @stack
      @stack = new_node
    end
  end

  def pop
    return nil if @stack.nil?

    element = @stack.element
    @stack = @stack.next
    element
  end

  def is_empty?
    @stack.nil?
  end

  def to_s
    return nil if @stack.nil?

    result = "["
    node = @stack
    while node
      result += "#{node.element} "
      node = node.next
    end
    result.strip + "]"
  end
end

class Queue
  def initialize
    @head = nil
    @tail = nil
  end

  def enqueue(element)
    if @head.nil?
      @head = @tail = Node.new(element)
    else
      node = Node.new(element)
      @tail.next = node
      @tail = node
    end
  end

  def dequeue
    return nil if @head.nil?

    element = @head.element
    if @tail == @head
      @tail = @head = nil
    else
      @head = @head.next
    end
    element
  end

  def is_empty?
    @head.nil?
  end

  def to_s
    return nil if @head.nil?

    result = "["
    node = @head
    while node
      result += "#{node.element} "
      node = node.next
    end
    result.strip + "]"
  end
end
