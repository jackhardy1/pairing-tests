class Rules

  def initialize
  end

  def blackjack? hand
    hand == 21
  end

  def greater_then_17 hand
    hand >= 17
  end

  def bust? hand
    hand > 21
  end
end
