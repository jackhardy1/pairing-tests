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
    elsif semi_jackpot?
      semi_jackpot_bonus
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

  def semi_jackpot?
    @roll.uniq.length == 4
  end

  def semi_jackpot_bonus
    @player.add (@jackpot / 2)
    @jackpot = @jackpot / 2
  end

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
