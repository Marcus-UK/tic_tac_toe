require './lib/game.rb'

describe Game do
  let(:board_dbl) {double :board, :grid => [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]],
   :show_board => "[[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]"}
   let(:player1_dbl) { double :player1, :name => 'Tic Tac King' }
   let(:player2_dbl) { double :player2, :name => 'Tic Tac Woe' }
    subject(:game) { described_class.new(board_dbl, player1_dbl, player2_dbl)}

   it 'can return the names of instantiated players' do
     expect(game.player1.name).to eq "Tic Tac King"
     expect(game.player2.name).to eq "Tic Tac Woe"
   end

   it 'starts off waiting for player 1 to place a piece' do
     expect(game.current_player).to eq(player1_dbl)
   end

  describe '#board_state' do

    it 'shows the current state of the game board' do
      expect(game.board_state).to eq "[[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]"
    end
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
