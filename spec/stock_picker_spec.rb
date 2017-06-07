require 'rspec'
require 'stock_picker'

describe "#stock_picker" do
  subject(:stock) {[10,11,11,15,17]}
  let(:stock1) {[11,11,10,10,11]}
  let(:stock2) {[11,11,10,10,9,15]}
  let(:zeroprofit) {[11,11,10,10]}
  let(:loss) {[12,11,10,9]}


  it "returns the most profitable pair of days to first buy and sell" do
    expect(stock_picker(stock)).to eq([0, 4])
  end

  it "returns profitable pair even when there are zero profit cases" do
    expect(stock_picker(stock1)).to eq([2, 4])
  end

  it "returns profitable pair even when there are loss cases" do
    expect(stock_picker(stock2)).to eq([4, 5])
  end

  it "returns an empty array when there is no profit to be made" do
    expect(stock_picker(zeroprofit)).to eq([])
  end


  it "returns the array with the least lost when no profit can be made" do
    expect(stock_picker(loss)).to eq("Loss reported")
  end

end
