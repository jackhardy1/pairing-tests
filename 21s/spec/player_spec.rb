require 'player'

describe Player do

  let(:new_player) {Player.new "Jack"}

  context 'when initializes' do
    it 'player enters a name' do
      expect(new_player.name).to eq "Jack"
    end
  end

  context 'hand' do
    it 'is empty at beginning' do
      expect(new_player.show_hand).to eq []
    end
  end
end
