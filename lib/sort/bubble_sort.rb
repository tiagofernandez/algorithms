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
  
end