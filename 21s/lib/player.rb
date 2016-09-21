class Player

  DEFAULT_BALANCE = 10

  attr_accessor :name, :balance, :hand

  def initialize name
    @name = name
    @balance = DEFAULT_BALANCE
    @hand = []
  end

  def add amount
    @balance += amount
  end

  def deduct amount
    @balance -= amount
  end

end
