class DataSet
  
  def self.random_array(number_of_items, extra_item=nil)
    array = []
    number_of_items.times do
      array << rand(number_of_items)
    end
    array[rand(number_of_items)] = extra_item if extra_item
    array
  end
  
  def self.random_binary_tree(number_of_nodes, extra_item=nil)
    btree = BinaryTreeNode.new(rand(number_of_nodes))
    number_of_nodes.times do
      btree.add rand(number_of_nodes)
    end
    btree.add extra_item if extra_item
    btree
  end
  
end