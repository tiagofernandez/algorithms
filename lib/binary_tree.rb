class BinaryTree
  
  attr_reader :node, :left, :right
  
  def initialize(node)
    raise ArgumentError if node.nil?
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
  
  def has_left?
    !@left.nil?
  end
  
  def has_right?
    !@right.nil?
  end
  
  def eq?(item)
    @node == item
  end

end