require 'player'

describe Player do

  let (:board) {double :board}
  subject {Player.new board}

  describe 'lose' do
    let (:board) {double :board, all_ships_sunk?: true}
    subject {Player.new board}
    it 'can lose' do
      expect(subject).to be_lost
    end
  end

  it 'can place ships' do
    ship = double :ship
    expect(board).to receive :place
    subject.place(ship)
  end
end
