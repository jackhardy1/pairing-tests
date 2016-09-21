class Dealer

  attr_accessor :name, :hand

  def initialize name
    @name = name
    @hand = []
  end

  def show_hand
    @hand
  end

  def show_total
    values = []
    @hand.each {|card| values << card.value}
    return values.reduce(:+)
  end

end
