class BinaryTree
  
  def add(value)
    if @root.nil?
      @root = BinaryTreeNode.new(value)
    else
      @root.add(value)
    end
  end

end

class BinaryTreeNode
  
  attr_reader :value, :left, :right
  
  def initialize(value)
    @value = value
  end

  def add(value)
    if value < @value
      if @left.nil?
        @left = BinaryTreeNode.new(value)
      else
        @left.add(value)
      end
    else
      if @right.nil?
        @right = BinaryTreeNode.new(value)
      else
        @right.add(value)
      end
    end
  end

end