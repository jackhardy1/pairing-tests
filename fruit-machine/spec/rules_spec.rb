require 'rules'

describe Rules do

  describe '#jackpot?' do
    it 'will return true if roll is all same colour' do
      expect(subject.jackpot? [0,0,0,0]).to eq true
    end
  end

  describe '#semi_jackpot?' do
    it 'will return true if roll is one of each colour' do
      expect(subject.semi_jackpot? [0,1,2,3]).to eq true
    end
  end

  describe '#other_bonus?' do
    it 'will return true if two adjacent colours are the same' do
      expect(subject.other_bonus? [0,1,1,3]).to eq true
    end
  end

end
