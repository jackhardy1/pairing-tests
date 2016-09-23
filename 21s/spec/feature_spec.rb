require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/dealer.rb'

describe Game do

  let(:sam) {Player.new "Sam"}
  let(:dealer) {Dealer.new "Dealer"}
  let(:new_game) {Game.new sam,dealer}

  context 'feature spec' do
    it 'rules' do
     new_game.deal_hand 2, sam
     new_game.deal_hand 2, dealer
    end
  end
end
