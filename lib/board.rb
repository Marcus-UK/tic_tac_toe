class Board

attr_reader :grid

  def initialize
    @grid = Array.new(3){Array.new(3, " ")}
  end

  def show_board
    @grid.each {|row| puts "#{row}"}
  end

end
