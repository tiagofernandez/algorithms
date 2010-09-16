require "dataset"
require "sort"

describe Sort do
  
  before :each do
    @unsorted_array = DataSet.unsorted_array
    @sorted_array = DataSet.sorted_array
  end
  
  it "should perform bubblesort" do
    sort_and_check Sort::BubbleSort.new
  end

  it "should perform selection sort" do
    sort_and_check Sort::SelectionSort.new
  end

  it "should perform insertion sort" do
    sort_and_check Sort::InsertionSort.new
  end

  it "should perform shell sort" do
    sort_and_check Sort::ShellSort.new
  end

  def sort_and_check(algorithm)
    algorithm.sort!(@unsorted_array).should == @sorted_array
  end

end