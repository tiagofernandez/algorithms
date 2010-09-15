require "dataset"
require "sort"

describe Sort do
  
  it "should sort using bubblesort" do
    sort Sort::BubbleSort.new
  end

  def sort(algorithm)
    algorithm.sort(DataSet.unsorted_array).should == DataSet.sorted_array
  end

end