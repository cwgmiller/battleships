require 'ship'

describe Ship do
	subject {Ship.new 'A1', 2, 'N'}

	context 'when created' do
		it 'has position' do
			expect(subject.position).to eq 'A1'
		end

		it 'has a size' do
			expect(subject.size).to eq 2
		end

		it 'has a direction' do
			expect(subject.direction).to eq 'N'
		end
	end

	context 'receiving a hit' do
		it 'can be hit' do
			subject.receive_hit
			expect(subject).to be_hit
		end
	end

  context 'sunk' do
    it 'can be sunk' do
      subject.receive_hit
      subject.receive_hit
      expect(subject).to be_sunk
    end
  end
end
