class DataSet
  
  def self.random_array
    array = []
    number_of_items = 4000
    number_of_items.times do
      array << rand(number_of_items)
    end
    array
  end
  
end