require './lib/Oystercard'

describe Oystercard do
  it "should have a balance" do
oystercard = Oystercard.new
expect(oystercard.balance).to eq 0
end

# it "should respond to top up" do
#   oystercard = Oystercard.new
#   expect(oystercard).to respond_to(:top_up).with(1).argument
# end

it "should deposit money put in by the user" do
  oystercard = Oystercard.new
  oystercard.top_up(10)
  expect(oystercard.balance).to eq 10
end

it "raises an error when balance exceeds £90" do
    oystercard = Oystercard.new
    expect {oystercard.balance > 90}.to raise_error("Maximum Exceeded")
    #{#maximum} needs to be put in "Maximum Exceeded"
end
end
