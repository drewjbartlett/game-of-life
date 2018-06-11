require_relative '../lib/game'
require_relative '../lib/grid'

describe "Conway's game of life" do
  let (:game) { Game.new(Grid.new) }

  it 'exists' do
    expect(game).to be_truthy
  end

  it 'is instantiated with a grid' do
    # Game.new
  end

  xit 'provides a way to obtain the grid it was instantiated with' do

  end

  xit 'has a tick method' do

  end

  xit 'the tick method changes the state of the grid' do

  end

end
