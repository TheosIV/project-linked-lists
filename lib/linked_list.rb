# frozen_string_literal: true

require_relative 'node'

# Linked Lists Class
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    return @head = new_node if head.nil?

    current_node = head
    current_node = current_node.next_node until current_node.next_node.nil?

    current_node.next_node = new_node
  end

  def prepend(value)
    new_node = Node.new(value, head)
    @head = new_node
  end

  def size
    count = 0
    current_node = head
    until current_node.nil?
      count += 1
      current_node = current_node.next_node
    end

    count
  end

  def head_value
    head.data
  end

  def tail
    current_node = head
    current_node = current_node.next_node until current_node.next_node.nil?

    last_node = current_node
  end

  def at(index)
    current_node = head
    i = 0

    until i == index
      current_node = current_node.next_node
      i += 1
    end

    current_node
  end

  def pop
    return @head = nil if size <= 1

    current_node = @head

    current_node = current_node.next_node until current_node.next_node.next_node.nil?

    current_node.next_node = nil
  end

  def contains?(value)
    current_node = @head
    i = 0

    while i < size
      return true if current_node.data == value

      current_node = current_node.next_node
      i += 1
    end

    false
  end

  def find(value)
    current_node = @head
    i = 0

    while i < size
      return i if current_node.data == value

      current_node = current_node.next_node
      i += 1
    end

    nil
  end

  def to_s
    current_node = @head
    string = ''
    i = 0

    while i < size
      string += "( #{current_node.data} ) ->"
      current_node = current_node.next_node
      i += 1
    end

    "#{string} nil"
  end

  def insert_at(value, index)
    return puts 'Error: you selected an index outside of the list.' if index >= size

    if index.zero?
      prepend(value)
    else
      new_node = Node.new(value, at(index))
      prev_node = at(index - 1)
      prev_node.next_node = new_node
    end
  end

  def remove_at(index)
    return puts 'Error: you selected an index outside of the list.' if index >= size

    if index.zero?
      @head = at(1)
    elsif index == size - 1
      pop
    else
      prev_node = at(index - 1)
      prev_node.next_node = at(index + 1)
    end
  end
end
