require_relative 'board.rb'
require_relative 'player.rb'

class Game

attr_reader :board , :player1, :player2, :current_player

  def initialize(board = Board.new , player1 = Player.new('Tic Tac King'),
                 player2 = Player.new('Tic Tac Woe'))
    @board = board
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def board_state
    @board.show_board
  end


  def place_game_piece(piece, row, column)
      return 'That isn\'t on the board!' if off_board(row, column)
      @board.grid[row][column] = piece if !space_occupied?(row, column)
      return 'That place is already taken'
  end

private

  def space_occupied?(row, column)
    @board.grid[row][column].class == String
  end
  def off_board(row,column)
    (row < 0 || row > 2) || (column < 0 || column > 2)
  end
end
