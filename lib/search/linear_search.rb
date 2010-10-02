module Search

  # Checks each element of a list sequentially, until the desired one is found.
  class LinearSearch
   
   def search(array, item)
     array.each_with_index { |elem, index|
       return index if elem == item
     }
     -1
   end
   
  end
  
end