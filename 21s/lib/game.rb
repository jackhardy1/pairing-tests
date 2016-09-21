require_relative './deck.rb'

class Game

  attr_reader :dec

  def initialize player, rules = Rules.new, deckKlass = Deck.new
    @player = player
    @rules = rules
    @deckKlass = deckKlass
  end

  def deal_hand player
    2.times {player.hand << @deckKlass.deal}
    bust?
  end

  def bust?
    false
  end
end
