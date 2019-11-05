require './lib/Oystercard'

describe Oystercard do
  it "should have a balance" do
oystercard = Oystercard.new
expect(oystercard.balance).to eq 0
end

end
