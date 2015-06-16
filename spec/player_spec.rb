require 'player'

describe Player do

let(:board) { double :board }
subject {Player.new (board)}

 	it {is_expected.to respond_to :lost?}

  describe 'lost' do
    it 'can check whether they have lost the game' do
      allow(board).to receive(:fleet_status) { "All ships sunk" }
      expect(subject.lost?).to eq "You have lost :("
    end
  end
end