require "./lib/node"
require 'pry'
class LinkedList

  attr_accessor :head, :next_node, :counter

  def initialize
    @head = head
  end

  def append(sound)
    current = @head
    if head == nil
      @head = Node.new(sound)
      @head.data
    else
      until current.next_node == nil
        current = current.next_node
      end
      current.next_node = Node.new(sound)
    end
  end

  def count
    count = 1
    current = @head
    while current.next_node != nil
      current = current.next_node
      count += 1
    end
    count
  end

  def to_string
    current = @head
    string = ""
    string << current.data + ' '
    while current.next_node != nil
      current = current.next_node
      string << current.data + ' '
    end
    string.chop
  end

  def prepend(sound)
    new_node = Node.new(sound)
    new_node.next_node = @head
    @head = new_node
    head.data
  end

  def insert(position, sound)
    current = @head
    (position - 1).times do
      current = current.next_node
    end

    new_node = Node.new(sound)
    new_node.next_node = current.next_node
    current.next_node = new_node
    new_node.data
  end

  def find(position, number_of_nodes)
    index = 0
    returned = ""
    current = @head
    until position == index
      current = current.next_node
      index += 1
    end

    number_of_nodes.times do
      returned << current.data + ' '
      index += 1
      current = current.next_node
    end
    returned.chop
  end

  def includes?(data)
    current = @head
    while current.next_node != nil
      if current.data == data
        return true
      end
      current = current.next_node
    end

    if current.data != data
      return false
    end
  end
end
