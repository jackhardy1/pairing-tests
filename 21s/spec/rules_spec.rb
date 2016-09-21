require 'rules'

describe Rules do

  let(:ten_spades) {double :ten_spades, value: 10}
  let(:nine_clubs) {double :nine_clubs, value: 9}
  let(:five_hearts) {double :five_hearts, value: 5}
  let(:ace_hearts) {double :ace_hearts, value: 11}

  describe '#blackjack?' do
    it 'is blackjack if cards total to 21' do
      expect(subject.blackjack?(
      [ten_spades,ace_hearts])).to eq true
    end

    it 'is not blackjack if cards do not total 21' do
      expect(subject.blackjack?([ten_spades,five_hearts])).to eq false
    end
  end

  describe '#bust?' do
    it 'is bust if over 21' do
      expect(subject.bust?([ten_spades,five_hearts,nine_clubs])).to eq true
    end

    it 'is not bust if under 21' do
      expect(subject.bust?([ten_spades,five_hearts])).to eq false
    end
  end
end
