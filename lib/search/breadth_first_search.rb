module Search

  # Begins at the root node and explores all the neighboring nodes. Then for
  # each of those nearest nodes, it explores their unexplored neighbor nodes,
  # and so on, until it finds the goal.
  class BreadthFirstSearch
    
    def search(binary_tree_node, item)
      queue = [binary_tree_node]
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