class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []

    end

    def push(el)
      # adds an element to the stack
      stack.push(el) ## dont need self or @ bc of private
      el.dup ## return el because we dont want to reveal the stack! 

    end

    def inspect ## called when you run p
      "#<Stack: #{self.object_id}>"

    end

    def pop
      # removes one element from the stack
      stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      stack.last
    end

    private 
    attr_reader :store
  end