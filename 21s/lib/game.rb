require_relative './rules.rb'
require_relative './deck.rb'

class Game

  def initialize player_1, player_2, rulesKlass = Rules.new, deckKlass = Deck.new
    @player_1 = player_1
    @player_2 = player_2
    @rulesKlass = rulesKlass
    @deckKlass = deckKlass
    @players = [player_1, player_2]
    @current_player = @players[0]
    @game_over = false
  end

  def shuffle_deck
    @deckKlass.shuffle!
  end

  def deal_hand  cards, player
    cards.times {player.hand << @deckKlass.deal}
  end

  def switch_turn
    @players.rotate!
  end

  def bust? player
    @rulesKlass.bust? player.total
  end

  def game_over
    @game_over = true
  end
end
