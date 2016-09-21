class Rules

  def blackjack? hand
    find_value(hand).reduce(:+) == 21
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
