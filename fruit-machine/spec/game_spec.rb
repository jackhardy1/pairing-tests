require 'game'
require 'rules'

describe Game do
  let(:rules) {double("rules")}
  let(:player) {double("player")}
  let(:game) {Game.new player, rules}

  context 'default settings' do
    it 'has jackpot of 100' do
      expect(subject.instance_variable_get(:@jackpot)).to eq 100
    end
  end

  context 'when player does not win' do
    it 'money is added to jackpot' do
      allow(rules).to receive(:jackpot?).and_return false
      allow(rules).to receive(:semi_jackpot?).and_return false
      allow(rules).to receive(:other_bonus?).and_return false
      allow(player).to receive(:has_insufficient_funds?).and_return false
      allow(player).to receive(:deduct)
      game.play
      expect(game.instance_variable_get(:@jackpot)).to eq 101
    end
  end

  context 'when player gets all same colour' do
    it 'jackpot is depleted' do
      allow(rules).to receive(:jackpot?).and_return true
      allow(rules).to receive(:semi_jackpot?).and_return false
      allow(rules).to receive(:other_bonus?).and_return false
      allow(player).to receive(:has_insufficient_funds?).and_return false
      allow(player).to receive(:add)
      game.play
      expect(game.instance_variable_get(:@jackpot)).to eq 0
    end
  end

  context 'when player gets one of each colour' do
    it 'player wins half of jackpot' do
      allow(rules).to receive(:jackpot?).and_return false
      allow(rules).to receive(:semi_jackpot?).and_return true
      allow(rules).to receive(:other_bonus?).and_return false
      allow(player).to receive(:has_insufficient_funds?).and_return false
      allow(player).to receive(:add)
      game.play
      expect(game.instance_variable_get(:@jackpot)).to eq 50
    end
  end

  context 'when player two adjacent colours' do
    it 'player wins 5 credits' do
      allow(rules).to receive(:jackpot?).and_return false
      allow(rules).to receive(:semi_jackpot?).and_return false
      allow(rules).to receive(:other_bonus?).and_return true
      allow(player).to receive(:has_insufficient_funds?).and_return false
      allow(player).to receive(:add)
      game.play
      expect(game.instance_variable_get(:@jackpot)).to eq 95
    end
  end

  context 'prints roll' do
    it 'shows same colours picked' do
      subject.instance_variable_set(:@roll, [0,0,0,0])
      expect(subject.print_roll).to eq 'black | black | black | black'
    end

    it 'shows different colours picked' do
      subject.instance_variable_set(:@roll, [0,1,2,3])
      expect(subject.print_roll).to eq 'black | white | green | yellow'
    end
  end

end
