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
  
  # Compare the target to the middle item in the list. If the target is the same
  # as the middle item, you've found the target. If it's before the middle item,
  # repeat this procedure on the items before the middle. If it's after the middle
  # item, repeat on the items after the middle.
  class BinarySearch
    
    def search(sorted_array, item)
      index = -1
      min = 0
      max = sorted_array.size
      until index != -1 or min > max
        mid = min + ((max - min) / 2)
        if item == sorted_array[mid]
          index = mid
        elsif item > sorted_array[mid]
          min = mid + 1
        else
          max = mid - 1
        end
      end
      index
    end
    
  end

  # Starts at the root and explores as far as possible along each branch before
  # backtracking. Traversal of graphs and digraphs:
  # - preorder: visit each node before its children.
  # - postorder: visit each node after its children.
  # - inorder (for binary trees only): visit left subtree, node, right subtree.
  class DepthFirstSearch
    
    def search(btree, item)
      if btree.eq?(item)
        return true
      elsif !btree.has_left? and !btree.has_right?
        return false
      end 
      [btree.left, btree.right].each { |elem|
        search elem, item if !elem.nil?
      }
    end
    
  end

  # Begins at the root node and explores all the neighboring nodes. Then for
  # each of those nearest nodes, it explores their unexplored neighbor nodes,
  # and so on, until it finds the goal.
  class BreadthFirstSearch
    
    def search(btree, item)
      queue = [btree]
      while !queue.empty?
        queue.each { |elem|
          return true if elem.eq?(item)
          queue.delete elem
          queue << elem.left if elem.has_left?
          queue << elem.right if elem.has_right?
        }
      end
      false
    end
  end
  
end