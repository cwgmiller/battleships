class Player

# could have used modules instead of re writing all methods

	attr_reader :board

	def initialize board
		@board = board
	end

	def lost?
	 board.all_ships_sunk?
	end

	def hits
		board.hits
	end

	def misses
		board.misses
	end

	def place ship
		board.place ship
	end

	def receive_hit target
		board.receive_hit target
	end
end
