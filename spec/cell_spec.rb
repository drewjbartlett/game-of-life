require_relative '../lib/cell'

describe "A cell" do

  let (:cell) { Cell.new }
  let (:dead_cell) {
    dead_cell = Cell.new
    dead_cell.die

    dead_cell
  }

  it 'exists' do
    expect(cell).to be_truthy
  end

  it 'is initially alive' do
    expect(cell).to be_alive
  end

  it 'can die' do
    cell.die
    expect(cell).to be_dead
  end

  it 'has neighbors, which is initially an empty array' do
    expect(cell.neighbors).to eq([])
  end

  it 'has a tick method' do
    expect(cell).to respond_to(:tick)
  end

  describe 'after a tick' do

    it 'a live cell with fewer than two live neighbors dies' do
      cell.add_neighbor(Cell.new)

      cell.tick

      expect(cell).to be_dead
    end

    it 'a dead cell with fewer than two live neighbors stays dead' do
      dead_cell.add_neighbor(Cell.new)

      dead_cell.tick

      expect(dead_cell).to be_dead
    end

    # TODO: Cell rules

  end

  it 'can add a neighbor' do
    cell.add_neighbor(Cell.new)

    expect(cell.neighbors.length).to be(1)
  end

  it 'can add multiple neighbors' do
    cell.add_neighbor(Cell.new)
    cell.add_neighbor(Cell.new)
    cell.add_neighbor(Cell.new)

    expect(cell.neighbors.length).to be(3)
  end

end
