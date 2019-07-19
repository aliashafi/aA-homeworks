# Big O-ctopus and Biggest Fish
# A Very Hungry Octopus wants to eat the longest
#  fish in an array of fish.

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

#o2 way
def find_fish(arr)
    longest = arr[0]
    arr.each do |fish1|
        arr.each do |fish2|
            if (fish1.length >= fish2.length) && (fish1.length > longest.length)
                longest = fish1
            end
        end
        
    end
    longest

end

# p find_fish(arr)


##O(n log n)
def merge_sort(arr)
    return arr if arr.length <= 1

    mid = arr.length / 2
    left = merge_sort(arr.take(mid))
    right = merge_sort(arr.drop(mid))

    finished = helper_merge(left,right)
    
end

def helper_merge(left,right)
    ans = []
    until left.empty? || right.empty?
        case left[0].length <=> right[0].length
        when -1
            ans << left.shift
        when 0 
            ans << left.shift
        when 1
            ans << right.shift
        end
    end

    ans.concat(left)
    ans.concat(right)
    
end

# p merge_sort(arr)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
#O(n)

def slow_dance(dir,arr)
    arr.each_with_index do |ele,idx|
        if ele == dir
            return idx
        end
    end

end

p slow_dance("up", tiles_array)

