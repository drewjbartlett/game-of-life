require_relative '../lib/cell'

describe "A cell" do

  let (:cell) { Cell.new }
  let (:dead_cell) {
    dead_cell = Cell.new
    dead_cell.die

    dead_cell
  }

  it 'exists' do
    Cell.new
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

end
