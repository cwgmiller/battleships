require_relative 'board'

class Ship

  attr_accessor :position
  attr_reader :floating
  attr_reader :hits
  attr_accessor :direction
  attr_accessor :size

  def initialize position
    @position = position
    @hits = []
    @floating = true
    @direction = direction
    @size = size
  end

  def sunk?
 	  if hits[0] == position
 	    @floating = false
    else
      @floating
 	  end 
  end
end