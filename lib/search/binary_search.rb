module Search
  
  # Compare the target to the middle item in the list. If the target is the same
  # as the middle item, you've found the target. If it's before the middle item,
  # repeat this procedure on the items before the middle. If it's after the middle
  # item, repeat on the items after the middle.
  class BinarySearch
    
    def search(sorted_array, item)
      index = -1
      min = 0
      max = sorted_array.size
      until index != -1 or min > max
        mid = min + ((max - min) / 2)
        if item == sorted_array[mid]
          index = mid
        elsif item > sorted_array[mid]
          min = mid + 1
        else
          max = mid - 1
        end
      end
      index
    end
    
  end

end