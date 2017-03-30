require 'game'

describe Game do

  subject(:game) {described_class.new(john, mittens)}
  let(:john) {double :john, attack: option, name: 'John'}
  let(:mittens) {double :mittens, got_attacked: option}
  let(:option) {double :Jungle}

  describe '#attack' do
    it "merks 'em" do
      expect(mittens).to receive(:got_attacked)
      game.attack(mittens, option)
    end
  end

  describe '#player_name' do
    it "returns the players name" do
      expect(game.player_name(john)).to eq 'John'
    end
  end

end
