require 'board'

describe Board do

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
      ship = double :ship
      subject.place ship
      expect(subject.ships).to eq [ship]
    end
  end
end
