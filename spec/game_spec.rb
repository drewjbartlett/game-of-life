require_relative '../lib/game'
require_relative '../lib/grid'

describe "Conway's game of life" do
  let (:game) { Game.new(Grid.new) }

  it 'exists' do
    expect(Game).to be_truthy
  end

  it 'is instantiated with a grid' do
    expect(game.grid).to be_truthy
  end

  it 'provides a way to obtain the grid it was instantiated with' do
    expect(game.grid).to be_truthy
  end

  it 'has a tick method' do
    expect(game).to respond_to(:tick)
  end

  xit 'the tick method changes the state of the grid' do

  end

end
