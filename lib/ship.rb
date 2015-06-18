class Ship

  attr_reader :position

  def initialize position
    @position = position
    @hit = false
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
