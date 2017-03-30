require 'player'
describe Player do

  subject(:john) {described_class.new("John")}
  subject(:mittens) {described_class.new("Mittens")}
  let(:option) {double :Jungle}

  describe '#name' do
    it 'returns player name' do
        expect(john.name).to eq "John"
    end
  end

  describe '#fp' do
    it 'returns the fame points' do
      expect(john.fp).to eq described_class::DEFAULT_FP
    end
  end


  describe '#got_attacked' do
    it "reduces the player's fame points" do
      expect { john.got_attacked(option) }.to change { john.fp }.by(-7)
    end
  end

end
