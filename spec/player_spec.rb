require './lib/player.rb'

describe Player do
  subject(:player) { described_class.new(name)}
  let(:name) { 'Player_1' }

  it 'is instantiated with a name' do
    expect(player.name).to eq 'Player_1'
  end

end
