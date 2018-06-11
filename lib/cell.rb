# TODO
class Cell
  MINIMUM_LIVE_NEIGHBORS_TO_DIE = 2

  attr_accessor :neighbors

  def initialize
    @alive = true
    @neighbors = []
  end

  def alive?
    @alive
  end

  def dead?
    !@alive
  end

  def die
    @alive = false
  end

  def tick
    if (self.live_neighbors.length < MINIMUM_LIVE_NEIGHBORS_TO_DIE)
      self.die
    end
  end

  def add_neighbor(neighbor)
    @neighbors << neighbor
  end

  def live_neighbors
    @neighbors.select do |cell|
      cell.alive?
    end
  end

end