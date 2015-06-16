require 'ship'

describe Ship do

subject {Ship.new (double :position)}

  it 'starts as floating' do
    expect(subject.floating).to be true
  end

  it 'has a size when created' do 
    expect(subject.size).not_to eq " "
  end

  it 'has a position when created' do
    expect(subject.position).not_to eq " "
  end

  it 'has a direction when created' do
    expect(subject.direction).not_to eq " "
  end

  describe 'sunk?' do
  	it 'returns the state of the ship, is it floating or sunk?' do
      ship = Ship.new 'A1'
      ship.hits << 'A1'
  		expect(ship.sunk?).to eq false
  	end
  end
end