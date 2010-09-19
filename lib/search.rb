module Search
  
  class LinearSearch
   
   def search(array, item)
     array.each_with_index { |elem, index|
       return index if elem == item
     }
     -1
   end
   
  end
  
  class BinarySearch
    
    def search(array, item)
      index = -1
      min = 0
      max = array.size
      until index != -1 or min > max
        mid = min + ((max - min) / 2)
        if item == array[mid]
          index = mid
        elsif item > array[mid]
          min = mid + 1
        else
          max = mid - 1
        end
      end
      index
    end
    
  end
  
end