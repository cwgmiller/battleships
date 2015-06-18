require 'board'

describe Board do
  
  context 'when created' do
 		it 'creates an array' do
    	expect(subject.ships).to eq []
  	end
	end	

	it 'responds to place' do 
		expect(subject).to repsond_to :place
	end
end
