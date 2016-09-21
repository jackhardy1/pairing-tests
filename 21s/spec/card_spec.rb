require 'card'

describe Card do

  context 'default settings' do
    it 'has a rank' do
      new_card = Card.new "J","Spades", 11
      expect(new_card.rank).to eq "J"
      expect(new_card.suit).to eq "Spades"
      expect(new_card.value).to eq 11
    end
  end
end
