class Rules

  def jackpot? roll
    roll.uniq.length == 1
  end

  def semi_jackpot? roll
    roll.uniq.length == 4
  end

  def other_bonus? roll
    roll.each_cons(2).any? {|slot_a, slot_b| slot_a == slot_b }
  end

end
