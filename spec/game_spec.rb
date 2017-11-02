require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new}


  it 'is instantiated with a game board' do
    expect(game.board).to be_instance_of(Board)
  end

  describe '#place_game_piece' do

    it 'places a piece on the board' do
      game.place_game_piece('X', 0, 0)
      expect(game.board.grid[0][0]).to eq('X')
    end
  end
end
