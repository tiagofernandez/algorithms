module Sort
  
  # Every repetition of insertion sort removes an element from the input data,
  # inserting it into the correct position in the already-sorted list, until
  # no input elements remain.
  class InsertionSort
    
    def sort!(array)
      last_index = array.size - 1
      1.upto(last_index) do |i|
        value = array[i]
        j = i - 1
        while j >= 0 and array[j] > value
          array[j+1] = array[j]
          j -= 1
        end
        array[j+1] = value
      end
      array
    end
    
  end
    
end