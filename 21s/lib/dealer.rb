class Dealer

  attr_accessor :name, :hand

  def initialize name
    @name = name
    @hand = []
  end

  def show_hand
    @hand
  end
end
