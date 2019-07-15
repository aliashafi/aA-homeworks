require "set"

class GraphNode
    attr_reader :value, :neighbors

    def initialize(value)
        @value = value 
        @neighbors = []
    end

    def neighbors=(node)
        @neighbors.concat(node) 
    end

end



