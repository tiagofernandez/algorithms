module Sort
  
  # Divide and conquer algorithm which relies on a partition operation: to partition an
  # array, we choose an element, called a pivot, move all smaller elements before the
  # pivot, and move all greater elements after it. The most complex issue in quicksort
  # is choosing a good pivot element; consistently poor choices of pivots can result in
  # drastically slower performance.
  class QuickSort

    def sort!(array)
      return array if array.length <= 1
      lesser, greater = [], []
      pivotIdx = array.length / 2
      pivot = array[pivotIdx]
      array.delete_at pivotIdx
      array.each { |item|
        (item < pivot) ? lesser << item : greater << item
      }
      return (sort!(lesser) << pivot).concat(sort!(greater))
    end
    
  end
  
end