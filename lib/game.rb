require_relative 'board.rb'

class Game

attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end

end