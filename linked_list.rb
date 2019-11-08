class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end



class Stack
    attr_reader :head

    def initialize
        @head = Node.new(1)
    end

    def push(value)
     @head = Node.new(value, @head)
    end

    def pop
     value = @head.value
     @head = @head.next_node
     return value 
    end


    def reverse
      current_node = @head
      previous_node = nil 
      next_node = nil

      while current_node.next_node
        next_node = current_node.next_node
        current_node.next_node = previous_node

        previous_node = current_node
        current_node = next_node
      end

      @head = previous_node
    end
end

def reverse_list(list)
    stack = Stack.new

    stack.pop

    while list.head
        stack.push(list.pop)
    end

    return stack

end

stack = Stack.new
stack.push 2
stack.push(9)
stack.push 189
p stack
stack.reverse
p stack
# p "original stack"
# p stack
# p "reversed"
# p reverse_list stack


