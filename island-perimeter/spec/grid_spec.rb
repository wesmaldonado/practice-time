require 'rspec/given'

testdir = File.dirname(__FILE__)
$LOAD_PATH.unshift testdir unless $LOAD_PATH.include?(testdir)

libdir = File.dirname(File.dirname(__FILE__)) + '/app'
$LOAD_PATH.unshift libdir unless $LOAD_PATH.include?(libdir)

require 'grid.rb'

RSpec.describe 'The grid, a digital frontier' do

  Given(:grid){ [[1,0,0,0],
                [0,0,0,0],
                [0,0,0,0],
                [0,0,0,0]] }

  it "a space that is an island has perimeter 4" do
    expect(Grid.new(grid).perimeter).to eq(4)
  end

  it "[[1]] is all OOB" do
    expect(Grid.new([[1],[0]]).perimeter).to eq(4)
  end

  it "has perimeter 16" do
    expect(Grid.new(
     [[0,1,0,0],
      [1,1,1,0],
      [0,1,0,0],
      [1,1,0,0] ]).perimeter).to eq(16)
  end

  it "has perimeter 8" do
    expect(Grid.new(
     [[0,0,0,0],
      [0,1,1,0],
      [0,1,1,0],
      [0,0,0,0] ]).perimeter).to eq(8)
  end

  it "has perimeter 10" do
    expect(Grid.new(
     [[0,0,0,1],
      [0,0,0,1],
      [0,0,0,1],
      [0,0,0,1] ]).perimeter).to eq(10)
  end
  it "handles there being islands" do 
    # Not a part of the question but still, one ponders.
    #expect(Grid.new(
    # [[1,0,0,1],
    #  [0,0,0,0],
    #  [0,0,0,0],
    #  [0,0,0,0] ]).perimeter).to eq(0)
  end

  it "has perimeter 0" do
    expect(Grid.new([[0]]).perimeter).to eq(0)
  end



end
