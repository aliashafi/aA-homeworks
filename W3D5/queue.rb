class Queue
    attr_reader :que
    def initialize
        @que = []
    end

    def enqueue(el)
        self.que.push(el)
    end

    def dequeue
        self.que.pop
    end

    def peek
        self.que[-1]
    end

end