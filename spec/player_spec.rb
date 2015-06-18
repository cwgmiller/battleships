require 'player'

describe Player do
  context 'lose' do
    board = double :board, all_ships_sunk?: true
    subject {Player.new board}
    it 'can lose' do
      expect(subject).to be_lost
    end
  end
end
