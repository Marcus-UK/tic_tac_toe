require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new}


  it 'is instantiated with a game board' do
    expect(game.board).to be_instance_of(Board)
  end

  describe '#place_game_piece' do

    it 'places an X on the board' do
      game.place_game_piece('X', 0, 0)
      expect(game.board.grid[0][0]).to eq('X')
    end

    it 'places an O on the board' do
      game.place_game_piece('O', 0, 0)
      expect(game.board.grid[0][0]).to eq('O')
    end

    it 'doesn\'t allow you to place a game piece on an occupied space' do
      game.place_game_piece('X', 0, 0)
      expect(game.place_game_piece('O', 0, 0)).to eq "That place is already taken"
    end

    it 'doesn\'t allow you to place a piece off the edge of the board' do
      expect(game.place_game_piece('X', 3, 0)).to eq "That isn't on the board!"
    end
  end
end
