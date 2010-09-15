require "dataset"
require "sort"

describe Sort do
  
  it "should perform bubblesort" do
    sort_and_check Sort::BubbleSort.new
  end

  it "should perform selection sort" do
    sort_and_check Sort::SelectionSort.new
  end

  def sort_and_check(algorithm)
    algorithm.sort(DataSet.unsorted_array).should == DataSet.sorted_array
  end

end