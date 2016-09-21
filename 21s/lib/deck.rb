require_relative './card.rb'

class Deck

  attr_reader :cards

  def initialize cardKlass = Card
    @cardKlass = cardKlass
    @ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    @suits = %w(Clubs Diamonds Hearts Spades)
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << @cardKlass.new(rank, suit, find_value(rank))
      end
    end
  end

  def find_value rank
    rank.is_a?(Integer) ? rank : 11
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

end
