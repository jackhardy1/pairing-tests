class Player

  DEFAULT_BALANCE = 20

  def initialize(name = 'undefined', balance = DEFAULT_BALANCE)
    @name = name
    @balance = balance
  end

  def show_balance
    @balance
  end

  def deduct
    @balance -= 1
  end

  def add amount
    @balance += amount
  end

  def has_insufficient_funds?
    @balance - 1 < 0
  end
end
