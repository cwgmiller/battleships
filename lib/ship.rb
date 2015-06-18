class Ship

  attr_reader :position, :size


  def initialize position, size
    @position = position
    @hit = false
    @size = size
  end

  def receive_hit
    @hit = true
  end

  def hit?
    hit
  end

  private

  attr_reader :hit
end
