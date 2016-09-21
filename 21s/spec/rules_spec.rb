require 'rules'

describe Rules do

  context '#blackjack' do
    it 'is blackjack if cards total to 21' do
      expect(subject.blackjack?([10,11])).to eq true
    end

    it 'is not blackjack if cards do not total 21' do
      expect(subject.blackjack?([10,7])).to eq false
    end
  end


end
