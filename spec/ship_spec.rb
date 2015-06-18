require 'ship'

describe Ship do 
	
	context 'when created' do 
		it 'has position' do 
			ship = Ship.new 'A1'
			expect(subject.position).to eq 'A1'
		end
	end

end

