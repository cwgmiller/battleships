require 'board'

describe Board do
  let(:ship) {double :ship, position: 'C5'}

  context 'when created' do
 		it 'creates an array' do
    	expect(subject.ships).to eq []
  	end
	end

  context 'place' do
  	it 'responds to place' do
  		   expect(subject).to respond_to(:place).with(1).arguments
  	end

    it 'places a ship' do
      subject.place ship
      expect(subject.ships).to eq [ship]
    end
  end

  context 'receive_hit' do
    before(:each) {subject.place(ship)}

    it 'receives a hit' do
      expect(ship).to receive :receive_hit
      subject.receive_hit 'C5'
    end

    it 'reports when missed' do
      expect(subject.receive_hit 'E3').to eq 'miss'
    end
  end

  context 'sunken ships' do
    it 'reports when all ships are sunk' do
      sunken_ship = double :ship, position: 'C5', sunk?: true
      subject.place(sunken_ship)
      expect(subject).to be_all_ships_sunk
    end

    xit 'reports when not all ships are sunk' do
    end
  end
end
