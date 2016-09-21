require 'dealer'

describe Dealer do

  let(:new_dealer) {Dealer.new "Sam"}

  context 'when initializes' do
    it 'player enters a name' do
      expect(new_dealer.name).to eq "Sam"
    end
  end

  context 'hand' do
    it 'is empty at beginning' do
      expect(new_dealer.show_hand).to eq []
    end
  end
end
