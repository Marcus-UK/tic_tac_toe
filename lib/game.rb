require_relative 'board.rb'
require_relative 'player.rb'

class Game

attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end


  def place_game_piece(piece, row, column)
      @board.grid[row][column] = piece if !space_occupied?(row, column)
      return 'That place is already taken'
  end

private

  def space_occupied?(row, column)
    @board.grid[row][column].class == String
  end
end
