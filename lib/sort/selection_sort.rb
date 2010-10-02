module Sort
  
  # Finds the minimum value in the list, swaps it with the value in the first
  # position and repeats the steps for the remainder of the list (starting at
  # the second position and advancing each time).
  class SelectionSort
    
    def sort!(array)
      last_index = array.size - 1
      0.upto(last_index) do |i|
        i.upto(last_index) do |j|
          if array[i] > array[j]
            min = array[j]
            array[j] = array[i]
            array[i] = min
          end
        end
      end
      array
    end
    
  end
  
end