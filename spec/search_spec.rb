require "binary_tree"
require "dataset"
require "search"
require "stopwatch"

describe Search do
  
  before :all do
    @search_item = 182
  end
  
  it "should perform linear search" do
    setup_arrays
    search_and_check Search::LinearSearch.new, @unsorted_array
  end
  
  it "should perform binary search" do
    setup_arrays
    search_and_check Search::BinarySearch.new, @sorted_array
  end
  
  it "should perform depth-first search" do
    setup_trees
    search_and_check Search::DepthFirstSearch.new, @binary_tree
  end

  it "should perform breadth-first search" do
    setup_trees
    search_and_check Search::BreadthFirstSearch.new, @binary_tree
  end

  def search_and_check(algorithm, data_structure)
    puts "\nRunning #{algorithm.class.name}..."
    StopWatch.start
    result = algorithm.search(data_structure, @search_item)
    result.should_not == nil
    result.should_not == -1     # array
    result.should_not == false  # tree
    StopWatch.stop
  end

  def setup_arrays
    @unsorted_array = DataSet.random_array(100000, @search_item)
    @sorted_array = @unsorted_array.sort # Quick sort
  end

  def setup_trees
    @binary_tree = DataSet.random_binary_tree(100000, @search_item)
  end

end