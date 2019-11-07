class Oystercard
attr_reader :balance
attr_reader :in_journery
MAXIMUM_BALANCE = 90
MINIMUM_BALANCE = 1

def initialize
@balance = 0

end


def top_up(money)
  # @balance += money
  # if @balance > @maximum
    fail "Maximum Value of 90 is exceeded" if @balance + money > MAXIMUM_BALANCE
    # unless @balance < 90
    @balance += money
  return @balance
end

# private
# def deduct(money)
#     @balance -= money
#   return @balance
# end

def touch_in
 print @balance
  # return @balance
  fail "Below Minimum Journey Funds" if @balance < MINIMUM_BALANCE
 @in_journery = true

  # unless @balance > MINIMUM_BALANCE
 # if @balance > MINIMUM_BALANCE then @in_journery = true
 end

def touch_out
  deduct (MINIMUM_BALANCE)
  return @balance
  @in_journery = false
end

private
def deduct(money)
    @balance -= money
  return @balance
end

end
