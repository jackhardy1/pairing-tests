require 'game'

describe Game do

  context 'dealing a new hand' do
    it 'player has two cards at first deal' do
      player_1 = Player.new "Jack"
      new_game = Game.new player_1
      new_game.deal_hand player_1
      expect(player_1.hand.length).to eq 2
    end
  end
end
