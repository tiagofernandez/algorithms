require "dataset"
require "search"
require "stopwatch"

describe Search do
  
  before :each do
    @search_item = 182
    @unsorted_array = DataSet.random_array(1000000, @search_item)
    @sorted_array = @unsorted_array.sort
  end
  
  it "should perform linear search" do
    search_and_check Search::LinearSearch.new, @unsorted_array
  end
  
  it "should perform binary search" do
    search_and_check Search::BinarySearch.new, @sorted_array
  end

  def search_and_check(algorithm, array)
    puts "\nRunning #{algorithm.class.name}..."
    StopWatch.start
    algorithm.search(array, @search_item).should_not == -1
    StopWatch.stop
  end

end