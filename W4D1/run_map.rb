require_relative "map.rb"
require "set"

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

# def bfs(starting_node, target_value)
#         que = [starting_node]
#         visited = Set.new()
#         until que.empty?
#            curr = que.shift
#            unless visited.include?(curr)
#             visited.add(curr)
#             return curr.value if curr.value == target_value
#             que += curr.neighbors
#            end
           

#         end
#         nil

#     end
def bfs(starting_node, target_value)
  queue = [starting_node]
  visited = Set.new()

  until queue.empty?
    node = queue.shift
    unless visited.include?(node)
      return node.value if node.value == target_value
      visited.add(node)
      queue += node.neighbors
    end
  end
  
  return nil
end


  p bfs(a, "f")