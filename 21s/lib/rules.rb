class Rules

  def initialize

  end

  def blackjack? hand
    hand.reduce(:+) == 21
  end

  def bust? hand
    hand.reduce(:+) > 21
  end

end
