class Board

	attr_reader :ships

	def initialize
		@ships = []
	end

	def place ship
		ships << ship
	end

	def receive_hit target
		ships.each do |ship|
			ship.receive_hit if ship.position == target
		end
	end
end
