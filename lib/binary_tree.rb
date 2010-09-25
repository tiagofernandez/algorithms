class BinaryTree
  
  attr_reader :node, :left, :right
  
  def initialize(node)
    @node = node
  end

  def add(node)
    if node < @node
      if @left
        @left.add node
      else
        @left = BinaryTree.new(node)
      end
    else
      if @right
        @right.add node
      else
        @right = BinaryTree.new(node)
      end
    end
  end
  
  def eq_node(item)
    @node == item
  end

  def eq_left(item)
    @left and @left.node == item
  end

  def eq_right(item)
    @right and @right.node == item
  end

end