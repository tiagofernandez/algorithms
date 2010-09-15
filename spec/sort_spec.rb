require "dataset"
require "sort"

describe Sort do
  
  before :all do
    @unsorted_array = DataSet.unsorted_array
    @sorted_array = DataSet.sorted_array
  end
  
  it "should perform bubblesort" do
    sort_and_check Sort::BubbleSort.new
  end

  it "should perform selection sort" do
    sort_and_check Sort::SelectionSort.new
  end

  def sort_and_check(algorithm)
    algorithm.sort(@unsorted_array).should == @sorted_array
  end

end