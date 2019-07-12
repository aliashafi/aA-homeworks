class Map
    attr_reader :my_map
    def initialize
        @my_map = []
    end 

    def set(key, value)
        pair = [key,value]
        if self.my_map.none? {|sub_arr| sub_arr.include?(key)}
            self.my_map << pair
        else
            self.my_map.each do |sub_arr|
                if sub_arr[0] == key
                    sub_arr[1] = value
                end
            end
        end


        # method can be used to either create a 
        # new key-value pair or update the value for a pre-existing key
    end

    def get(key)
        self.my_map.each do |sub_arr|
            if sub_arr[0] == key 
                return sub_arr
            end
        end
        raise "key does not exist"

    end

    def delete(key)
        self.my_map.each_with_index do |sub_arr,idx|
            if sub_arr[0] == key 
                return self.my_map[0...idx] + self.my_map[(idx + 1)..-1]
            end
        end
        raise "key does not exist"

    end

    def show
        self.my_map
    end
end