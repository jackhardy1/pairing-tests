require_relative './deck.rb'

class Game

  def initialize rulesKlass = Rules.new, deckKlass = Deck.new
    @rulesKlass = rulesKlass
    @deckKlass = deckKlass
  end

  def deal_hand  cards,player
    cards.times {player.hand << @deckKlass.deal}
  end

  def bust? player
    @rulesKlass.bust? player.hand
  end
end
