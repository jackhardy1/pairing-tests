require 'deck'

describe Deck do

  context 'default settings' do
    it 'has 52 cards' do
      expect(subject.cards.length).to eq 52
    end
  end

  context 'dealing' do
    it 'removes one card from deck' do
      subject.deal
      expect(subject.cards.length).to eq 51 
    end
  end
end
