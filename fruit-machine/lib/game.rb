require_relative 'player.rb'

class Game

  DEFAULT_JACKPOT = 100

  def initialize player = Player.new, jackpot = DEFAULT_JACKPOT
    @player = player
    @jackpot = jackpot
    @colours = ['black','white','green','yellow']
    @roll = []
    @bonus_turns = 0
  end

  def show_jackpot
    @jackpot
  end

  def play
    raise "insufficient_funds" if @player.has_insufficient_funds?
    roll
    if jackpot?
      jackpot_bonus
    else
      @player.deduct
      @jackpot += 1
    end
  end

  def print_roll
    array = []
    @roll.each{|item|array.push(@colours[item])}
    array.join(" | ")
  end

  private

  def jackpot?
    @roll.uniq.length == 1
  end

  def jackpot_bonus
    @player.add @jackpot
    @jackpot = 0
  end

  def roll
    @roll = []
    numbers = [0,1,2,3]
    4.times { @roll.push numbers.sample }
  end
end
