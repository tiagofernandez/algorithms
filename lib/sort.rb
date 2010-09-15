module Sort
  
  class BubbleSort

    def sort(array)
      number_of_items = array.size - 1
      0.upto(number_of_items) do |i|
        number_of_items.downto(1) do |j|
          compare_and_swap(array, j)
        end
      end
      array
    end

    private

    def compare_and_swap(array, index)
      previous = index-1
      if array[index] < array[previous]
        temp = array[index]
        array[index] = array[previous]
        array[previous] = temp
      end
    end

  end
    
end