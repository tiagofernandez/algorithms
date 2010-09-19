require "dataset"
require "sort"
require "stopwatch"

describe Sort do
  
  before :each do
    @unsorted_array = DataSet.random_array(3500)
    @sorted_array = @unsorted_array.sort
  end
  
  it "should perform bubble sort" do
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
    puts "\nRunning #{algorithm.class.name}..."
    StopWatch.start
    algorithm.sort!(@unsorted_array).should == @sorted_array
    StopWatch.stop
  end

end