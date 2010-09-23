module Sort
  
  # Works by repeatedly stepping through the list to be sorted, comparing each
  # pair of adjacent items and swapping them if they are in the wrong order.
  class BubbleSort

    def sort!(array)
      last_index = array.size - 1
      0.upto(last_index) do |i|
        last_index.downto(1) do |j|
          if array[j] < array[j-1]
            min = array[j]
            array[j] = array[j-1]
            array[j-1] = min
          end
        end
      end
      array
    end

  end
  
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
  
  # Exploits the fact that insertion sort works efficiently on input that is
  # already almost sorted. It improves on insertion sort by allowing the comparison
  # and exchange of elements that are far apart. The last step of Shell sort is a plain
  # insertion sort, but by then, the array of data is guaranteed to be almost sorted.
  class ShellSort
    
    def sort!(array)
      last_index = array.size - 1
      distance = array.size / 2
      while distance > 0
        distance.upto(last_index) do |i|
          value = array[i]
          j = i
          while j >=distance and array[j-distance] > value
            array[j] = array[j-distance]
            j -= distance
          end
          array[j] = value
        end
        distance /= 2
      end
      array
    end

  end
  
end