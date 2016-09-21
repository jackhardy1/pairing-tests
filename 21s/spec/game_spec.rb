require 'game'
require 'player'

describe Game do

  let(:player_1) {Player.new "Jack"}
  let(:new_game) {Game.new}

  context 'dealing a new hand' do
    it 'player has two cards at first deal' do
      new_game.deal_hand 2, player_1
      expect(player_1.hand.length).to eq 2
    end
  end

  context 'dealing one more card' do
    it 'adds one more card to hand' do
      new_game.deal_hand 2, player_1
      new_game.deal_hand 1, player_1
      expect(player_1.hand.length).to eq 3
    end
  end

end
