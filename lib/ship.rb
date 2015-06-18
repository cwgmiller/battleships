class Ship

  attr_reader :position, :size, :direction


  def initialize position, size, direction
    @position = position
    @hit = false
    @size = size
    @life = size
    @direction = direction
  end

  def receive_hit
    @hit = true
    lose_life
  end

  def hit?
    hit
  end

  def sunk?
    zero_health?
  end


  private

  attr_reader :hit

  def lose_life
    @life -= 1
  end

  def zero_health?
    @life == 0
  end
end
