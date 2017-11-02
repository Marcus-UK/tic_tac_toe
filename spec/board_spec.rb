require './lib/board.rb'

describe Board do
  subject(:board) {described_class.new}

  describe '#show_board' do
    it 'displays the current state of the board' do
      expect{ board.show_board }.to output("[\" \", \" \", \" \"]\n" +
      "[\" \", \" \", \" \"]\n" +
      "[\" \", \" \", \" \"]\n").to_stdout
    end
  end
end
