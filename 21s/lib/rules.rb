class Rules

  def initialize
  end

  def blackjack? hand
    hand == 21
  end

  def greater_then_17 hand
    hand >= 17
  end

  def better_than_player dealer_hand, player_hand
    dealer_hand >= player_hand
  end

  def bust? hand
    hand > 21
  end
end
