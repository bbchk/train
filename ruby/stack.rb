require_relative "stacklike"

class Stack 
  include Stacklike

  def inspect
    puts @stack.inspect
  end 
end


stack = Stack.new

stack.add_to_stack(3)

stack.add_to_stack(3)
stack.add_to_stack(3)


puts stack.inspect
puts stack.stack.inspect
