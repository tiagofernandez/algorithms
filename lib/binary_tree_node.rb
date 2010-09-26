class BinaryTreeNode
  
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
        @left = BinaryTreeNode.new(node)
      end
    else
      if @right
        @right.add node
      else
        @right = BinaryTreeNode.new(node)
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