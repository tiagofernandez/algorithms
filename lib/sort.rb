module Sort
  
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