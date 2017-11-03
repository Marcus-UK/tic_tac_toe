require './lib/board.rb'

describe Board do
  subject(:board) {described_class.new}

  describe '#show_board' do
    it 'displays the current state of the board' do
      expect{ board.show_board }.to output("[nil, nil, nil]\n" +
      "[nil, nil, nil]\n" +
      "[nil, nil, nil]\n").to_stdout
    end
  end
end
