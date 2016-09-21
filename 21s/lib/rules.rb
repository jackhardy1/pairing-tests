class Rules

  def initialize
  end

  def blackjack? hand
    find_value(hand).reduce(:+) == 21
  end

  def greater_then_17 hand
    find_value(hand).reduce(:+) >= 17
  end

  def bust? hand
    find_value(hand).reduce(:+) > 21
  end

  private

  def find_value hand
    values = []
    hand.each {|card| values << card.value}
    return values
  end
end
