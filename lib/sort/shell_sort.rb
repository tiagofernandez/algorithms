module Sort
    
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