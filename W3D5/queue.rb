class Queue
    
    def initialize
        @que = []
    end

    def enqueue(el)
        que.unshift(el)
        el.dup
    end

    def dequeue
        que.pop
    end

    def peek
        que[0]
    end

    def show
        que.reverse.dup
    end

    def size
        que.length
    end

    def empty?
        que.empty?
    end

    private 
    attr_reader :que

end