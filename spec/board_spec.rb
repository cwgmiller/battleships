require 'board'

describe Board do

  describe 'report miss' do
    it 'sends a message saying miss!' do
      expect(subject.report_miss).to eq 'miss!'
    end
  end

  describe 'place' do
    it 'can place ships on the board' do
      ship = double :ship, position: 'C2'
      expect(subject.place ship).to eq [ship]
    end
  end

  context 'when a shot is fired' do
    it 'receive hit will say the hit has missed' do
      ship1 = double :ship, position: 'C2'
      subject.place ship1
      expect(subject.receive_hit 'F1').to eq 'miss!'
    end
  
    it 'receive hit will sink the ship' do
      expect(subject).to respond_to :receive_hit
    end
  end

  context 'reporting fleet status' do 
    it 'can report if all ships are sunk' do
      ship = double :ship, floating: false
      subject.place ship
      subject.ship_sunk
      expect(subject.fleet_status).to eq 'All ships sunk'
    end

    it 'can report if not all the ships are sunk' do
      ship = double :ship, floating: true
      subject.place ship
      expect(subject.fleet_status).to eq 'Not all ships sunk'
    end
  end
end
