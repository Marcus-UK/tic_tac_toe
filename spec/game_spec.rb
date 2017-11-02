require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new}


  it 'is instantiated with a game board' do
    expect(game.board).to be_instance_of(Board)
  end

end
