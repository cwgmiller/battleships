class Board

	attr_reader :ships

	def initialize
		@ships = []
	end

	def place ship
		ships << ship
	end

	def receive_hit target
		hit = false

		ships.each do |ship|
			if ship.position == target
				ship.receive_hit
				hit = true
			end
		end
		hit_report hit
	end

	def all_ships_sunk? 
		count = 0
		ships.each do |ship|
			count += 1 if ship.sunk?
		end
		count == ships.count
	end

	private

	def hit_report hit
		hit ? 'hit' : 'miss'
	end
end
