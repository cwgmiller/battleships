class Board

	attr_reader :ships, :hits, :misses

	def initialize
		@ships = []
		@hits = []
		@misses = []
	end

	def place ship
		fail "Cannot place ship off board" unless off_board?(ship)
		fail 'Space occupied' if location_occupied? ship
		ships << ship
	end

	def receive_hit target
		hit = false

		ships.each do |ship|
			if ship.position == target
				ship.receive_hit
				hits << target
				hit = true
			end
		end

		unless hit
			misses << target
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

	def location_occupied? ship
		occupied = false
		ships.each do |placed_ship|
			occupied = true if ship.position == placed_ship.position
		end
		occupied
	end

	def hit_report hit
		hit ? 'hit' : 'miss'
	end

	def off_board? ship
		column_checker(ship) && row_checker(ship)
	end

	def column_checker ship
		ship.position.chars[0] <= 'J'
	end

	def row_checker ship
		letter = ship.position.chars[0]
		position_copy = ship.position.dup
		number = position_copy.tr(letter,"").to_i
		number >= 1 && number <=10
	end
end
