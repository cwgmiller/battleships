require 'ship'

describe Ship do
	subject {Ship.new 'A1'}

	context 'when created' do
		it 'has position' do
			expect(subject.position).to eq 'A1'
		end
	end

	context 'receiving a hit' do
		it 'can be hit' do
			subject.receive_hit
			expect(subject).to be_hit
		end
	end
end
