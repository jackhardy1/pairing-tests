require 'rules'

describe Rules do

  describe '#blackjack?' do
    it 'is blackjack if cards total to 21' do
      expect(subject.blackjack?(21)).to eq true
    end

    it 'is not blackjack if cards do not total 21' do
      expect(subject.blackjack?(20)).to eq false
    end
  end

  describe '#bust?' do
    it 'is bust if over 21' do
      expect(subject.bust?(24)).to eq true
    end

    it 'is not bust if under 21' do
      expect(subject.bust?(14)).to eq false
    end
  end
end
