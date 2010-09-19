class DataSet
  
  def self.random_array(number_of_items, extra_item = nil)
    array = []
    number_of_items.times do
      array << rand(number_of_items)
    end
    array[rand(number_of_items)] = extra_item if extra_item != nil
    array
  end
  
end