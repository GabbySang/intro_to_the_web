class Oystercard
attr_reader :balance
MAXIMUM_BALANCE = 90

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

def deduct(money)
    @balance -= money
  return @balance
end
end
