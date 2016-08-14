require 'player'

describe Player do

  context 'default settings' do
    it 'player starts with default balance of 20' do
      expect(subject.show_balance).to eq 20
    end
  end

  context 'changing balance' do
    it 'increases' do
      subject.add 20
      expect(subject.show_balance).to eq 40
    end

    it 'decreases' do
      subject.deduct
      expect(subject.show_balance).to eq 19
    end
  end
end
