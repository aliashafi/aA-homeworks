require_relative "queue.rb"
class Node
    attr_reader :value, :children

    def initialize(value, children = [])
        @value = value
        @children =  children
    end

    def bfs(target)
        # step 1 - create que with node inside
        node_queue = Queue.new() #instance method.. call instance method on root node
        node_queue.enqueue(self) #self is root node

        until node_queue.empty?
            #2a - deq node
            curr_node = node_queue.dequeue
            #2b - check node value with target
            return curr_node if curr_node.value == target
            #2c add children to q
            curr_node.children.each do |child|
                node_queue.enqueue(child)
            end
        end 

        #3 return nil as we broke out of the loop and did not find nil
        nil
        end

    end

end

d = Node.new("d")
e = Node.new("e")
f = Node.new("f")
g = Node.new("g", [d,e])
c = Node.new("c", [f,g])
a = Node.new("a", [b,c])

a.children #=> get children 
a.children[0] #=> get one children 
