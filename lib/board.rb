require_relative 'ship'

class Board

  attr_accessor :ships
  attr_accessor :sunken_ships
  attr_reader :misses
  attr_reader :hits

  def initialize
    @ships = []
    @sunken_ships = []
    @misses = []
    @hits = []
  end

  def place ship
    ships << ship
  end

  def receive_hit guess
    hit = false
    ships.each do |ship|
      if ship.position == guess
        hit = true
        ship.hits << guess
        ship.sunk?
        ship_sunk
      end
    end
      if hit
        hits << guess 
        report_hit
      else
        misses << guess
        report_miss
      end
  end

  def ship_sunk
    ships.each do |ship|
      if ship.floating == false
        sunken_ships << ship 
      end
    end
    sunken_ships.uniq!
  end

  def fleet_status
    (sunken_ships.count) == (ships.count) ? 'All ships sunk' : 'Not all ships sunk'
  end

  def report_miss
    'miss!'
  end

  def report_hit
    'hit!'
  end
end
