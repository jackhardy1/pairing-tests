require 'game'

describe Game do

  context 'default settings' do
    it 'has jackpot of 100' do
      expect(subject.show_jackpot).to eq 100
    end
  end

  context 'when player does not win' do
    it 'money is added to jackpot' do
      allow(subject).to receive(:jackpot?).and_return false
      allow(subject).to receive(:semi_jackpot?).and_return false
      subject.play
      expect(subject.show_jackpot).to eq 101
    end
  end

  context 'when player gets all same colour' do
    it 'jackpot is depleted' do
      allow(subject).to receive(:jackpot?).and_return true
      allow(subject).to receive(:semi_jackpot?).and_return false
      subject.play
      expect(subject.show_jackpot).to eq 0
    end
  end

  context 'when player gets one of each colour' do
    it 'player wins half of jackpot' do
      allow(subject).to receive(:jackpot?).and_return false
      allow(subject).to receive(:semi_jackpot?).and_return true
      subject.play
      expect(subject.show_jackpot).to eq 50
    end
  end

  context 'prints roll' do
    it 'shows same colours picked' do
      subject.instance_variable_set(:@roll, [0,0,0,0])
      expect(subject.print_roll).to eq 'black | black | black | black'
    end

    it 'shows different colours picked' do
      subject.instance_variable_set(:@roll, [0,1,2,3])
      expect(subject.print_roll).to eq 'black | white | green | yellow'
    end
  end

end
