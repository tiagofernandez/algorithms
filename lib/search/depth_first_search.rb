module Search

  # Starts at the root and explores as far as possible along each branch before
  # backtracking. Traversal of graphs and digraphs:
  # - preorder: visit each node before its children.
  # - postorder: visit each node after its children.
  # - inorder (for binary trees only): visit left subtree, node, right subtree.
  class DepthFirstSearch
    
    def search(binary_tree_node, item)
      if binary_tree_node.eq?(item)
        return true
      elsif !binary_tree_node.has_left? and !binary_tree_node.has_right?
        return false
      end 
      [binary_tree_node.left, binary_tree_node.right].each { |elem|
        search elem, item if !elem.nil?
      }
    end
    
  end
  
end