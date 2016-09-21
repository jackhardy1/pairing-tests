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
    @cards.shuffle!
  end

  def find_value rank
    if rank.to_i == 0 && rank != "A"
      10
    elsif rank == "A"
      11
    else
      rank.to_i
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

end
