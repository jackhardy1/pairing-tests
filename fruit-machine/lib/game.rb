require_relative 'player.rb'
require_relative 'rules.rb'

class Game

  DEFAULT_JACKPOT = 100
  COLOURS = ['black','white','green','yellow']

  def initialize player = Player.new, rules = Rules.new, jackpot = DEFAULT_JACKPOT
    @player = player
    @jackpot = jackpot
    @rules = rules
    @colours = COLOURS
    @roll = []
  end

  def play
    raise "insufficient_funds" if @player.has_insufficient_funds?
    roll
    fare_calculator
  end

  def print_roll
    array = []
    @roll.each{|item|array.push(@colours[item])}
    array.join(" | ")
  end

  private

  def fare_calculator
    if @rules.jackpot? @roll then jackpot_bonus
    elsif @rules.semi_jackpot? @roll then semi_jackpot_bonus
    elsif @rules.other_bonus? @roll then other_bonus_jackpot
    else
      @player.deduct
      @jackpot += 1
    end
  end

  def semi_jackpot_bonus
    @player.add (@jackpot / 2)
    @jackpot = @jackpot / 2
  end

  def jackpot_bonus
    @player.add @jackpot
    @jackpot = 0
  end

  def other_bonus_jackpot
    @player.add 5
    @jackpot -= 5
  end

  def roll
    @roll = []
    numbers = [0,1,2,3]
    4.times { @roll.push numbers.sample }
  end
end
