require './lib/player.rb'

describe Player do
  subject(:player) { described_class.new(name, piece)}
  let(:name) { 'Player_1' }
  let(:piece) { 'X' }

  it 'is instantiated with a name' do
    expect(player.name).to eq 'Player_1'
  end

  it 'is instantiated with a game piece' do
    expect(player.piece).to eq 'X'
  end

end
