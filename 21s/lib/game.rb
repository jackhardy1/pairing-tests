require_relative './rules.rb'
require_relative './deck.rb'

class Game

  def initialize rulesKlass = Rules.new, deckKlass = Deck.new
    @rulesKlass = rulesKlass
    @deckKlass = deckKlass
    @game_over = false
    @players = []
  end

  def shuffle_deck
    @deckKlass.shuffle!
  end

  def deal_hand  cards, player
    cards.times {player.hand << @deckKlass.deal}
    # raise "#{player.name} is bust, your score was #{player.hand}" if bust? player.show_total
  end

  def bust? total
    @rulesKlass.bust? total
  end

  def game_over
    @game_over = true
  end
end
