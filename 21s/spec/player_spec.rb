require 'player'

describe Player do

  context 'when initializes' do
    it 'player enters a name' do
      new_player = Player.new "Jack"
      expect(new_player.name).to eq "Jack"
    end
  end

  context 'balance' do
    it 'can add balance' do
      new_player = Player.new "Jack"
      new_player.add 10
      expect(new_player.balance).to eq 20
    end

    it 'can deduct balance' do
      new_player = Player.new "Jack"
      new_player.deduct 5
      expect(new_player.balance).to eq 5
    end
  end

  context 'hand' do
    it 'is empty at beginning' do
      new_player = Player.new "Jack"
      expect(new_player.hand).to eq []
    end
  end
end
