require_relative 'board.rb'
require_relative 'player.rb'

class Game

attr_reader :board , :player1, :player2, :current_player, :turn

  def initialize(board = Board.new , player1 = Player.new('Tic Tac King', 'X'),
                 player2 = Player.new('Tic Tac Woe', 'O'))
    @board = board
    @player1 = player1
    @player2 = player2
    @current_player = @player1
    @turn = 0
  end

  def board_state
    @board.show_board
  end


  def place_game_piece(piece = piece_selection, row, column)
    return 'That isn\'t on the board!' if off_board(row, column)
    if !space_occupied?(row, column)
      @board.grid[row][column] = piece
      swap_players
      return 'You placed a marker'
    else
      return 'That place is already taken'
    end
  end

private

  def space_occupied?(row, column)
    @board.grid[row][column].class == String
  end

  def off_board(row,column)
    (row < 0 || row > 2) || (column < 0 || column > 2)
  end

  def swap_players
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end

  def piece_selection
    @current_player == @player1 ? @player1.piece : @player2.piece
  end
end
