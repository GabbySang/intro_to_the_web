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

# it "deducts money when you use it" do
#   oystercard = Oystercard.new
#   oystercard.top_up(10)
#   oystercard.deduct(6)
#   expect(oystercard.balance).to eq 4
# end

it "does not allow balance to exceed £90" do
    oystercard = Oystercard.new
    MAXIMUM_BALANCE = 90 #maximum_balance = Oystercard::MAXIMUM_BALANCE
    # subject.top_up maximum_balance
    expect {oystercard.top_up(91) > MAXIMUM_BALANCE}.to raise_error("Maximum Value of #{MAXIMUM_BALANCE} is exceeded")
    # expect{ subject.top_up 1 }.to raise_error "Maximum balance of #{maximum_balance} exceeded"
end



 it "it will not touch in when there is less than minimum balance" do
   oystercard = Oystercard.new
   MINIMUM_BALANCE = 1
   expect { oystercard.touch_in < MINIMUM_BALANCE }.to raise_error("Below Minimum Journey Funds")
 in_journery = true
# if (oystercard.touch_in > MINIMUM_BALANCE)
#   expect(oystercard.touch_in).to be true
   # expect(oystercard.touch_in).to be true
end


 it "is not in use when it is touched out" do
   oystercard = Oystercard.new
   expect { oystercard.touch_out }.to change {oystercard.balance}.by(-MINIMUM_BALANCE)
   in_journey = false
 end
end
# it "checks the minimum balance" do
#   oystercard = Oystercard.new
#   MINIMUM_BALANCE = 1
#   expect { oystercard.touch_in < MINIMUM_BALANCE }.to raise_error
#("Below Minimum Journey Funds")
