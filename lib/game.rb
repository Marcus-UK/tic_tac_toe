require_relative 'board.rb'

class Game

attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end


  def place_game_piece(piece, row, column)
    @board.grid[row][column] = piece
  end
end
