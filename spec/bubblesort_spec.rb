require "bubblesort"

describe BubbleSort do
  
  it "should sort an array" do
    BubbleSort.sort([1,4,5,2,9,3,6,8,0,7]).should == [0,1,2,3,4,5,6,7,8,9]
  end

end