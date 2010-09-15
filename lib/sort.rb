module Sort
  
  class BubbleSort

    def sort(array)
      last_index = array.size - 1
      0.upto(last_index) do |i|
        last_index.downto(1) do |j|
          compare_and_swap array, j
        end
      end
      array
    end

    private

    def compare_and_swap(array, index)
      previous = index-1
      if array[index] < array[previous]
        min = array[index]
        array[index] = array[previous]
        array[previous] = min
      end
    end

  end
  
  class SelectionSort
    
    def sort(array)
      last_index = array.size - 1
      0.upto(last_index) do |i|
        i.upto(last_index) do |j|
          compare_and_swap array, i, j
        end
      end
      array
    end
    
    private
    
    def compare_and_swap(array, leftIndex, rightIndex)
      if array[leftIndex] > array[rightIndex]
        min = array[rightIndex]
        array[rightIndex] = array[leftIndex]
        array[leftIndex] = min
      end
    end
    
  end
    
end