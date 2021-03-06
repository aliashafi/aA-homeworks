class LRUCache
    def initialize
        @cache = []
        @size = size
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include?(ele)
        @cache.delete(ele)
      elsif count >= @size
        @cache.shift
        @cache << el
      end
      @cache << ele

    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
      nil

    end

    private
    # helper methods go here!

  end