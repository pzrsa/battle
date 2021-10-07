require "game"

describe Game do
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  let(:game) { described_class.new(player_1, player_2) }

  describe "#initialize" do
    it "returns initialized players" do
      expect(game.players).to eq([player_1, player_2])
    end
  end

  describe "#attack" do
    it "attacks the player and damages them" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
