require 'player'

describe Player do

  let(:new_player) {Player.new "Jack"}

  context 'when initializes' do
    it 'player enters a name' do
      expect(new_player.name).to eq "Jack"
    end
  end

  # context 'balance' do
  #   it 'can add balance' do
  #     new_player.add 10
  #     expect(new_player.balance).to eq 20
  #   end
  #
  #   it 'can deduct balance' do
  #     new_player.deduct 5
  #     expect(new_player.balance).to eq 5
  #   end
  # end

  context 'hand' do
    it 'is empty at beginning' do
      expect(new_player.hand).to eq []
    end
  end
end
