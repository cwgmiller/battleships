require_relative 'board'

class Player
  attr_accessor :board

  def initialize board
    @board = board
  end

  def lost? 
  	board.fleet_status == 'All ships sunk' ? "You have lost :(" : "Keep going!"
  end
end
