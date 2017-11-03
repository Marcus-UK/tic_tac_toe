require_relative 'board.rb'
require_relative 'player.rb'

class Game

attr_reader :board

  def initialize(board = Board.new)
    @board = board
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
