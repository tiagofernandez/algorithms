class DataSet
  
  @@unsorted_array = [1,4,5,2,9,3,6,8,0,7]
  @@sorted_array = @@unsorted_array.sort
  
  def self.unsorted_array
    Array.new @@unsorted_array
  end
  
  def self.sorted_array
    Array.new @@sorted_array
  end
  
end