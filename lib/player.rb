class Player

attr_reader :board

def initialize board
	@board = board
end

def lost?
  board.all_ships_sunk?
end

def place ship
	board.place ship
end
end