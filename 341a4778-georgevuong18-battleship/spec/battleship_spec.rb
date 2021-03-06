require "rspec"
require "battleship"
require "board"
require "player"

describe BattleshipGame do
  # :two_ship_board is an instance/object of class Board
  let(:two_ship_grid) { [[:s, :s], [nil, nil]] }
  let(:two_ship_board) { Board.new(two_ship_grid) }

  let(:player) { double("player") }
  # :game is instance/object of class BattleshipGame
  let(:game) { BattleshipGame.new(player, two_ship_board) }

  describe "#initialize" do
    it "accepts a player and a board as arguments" do
      expect { game }.not_to raise_error
    end
  end

  describe "#attack" do
    it "marks the board at the specified position" do
      game.attack([1, 1])

      expect(game.board[[1, 1]]).to eq(:x)
    end
  end

  describe "#count" do
    it "delegates to the board's #count method" do
      expect(game.board).to receive(:count)

      game.count
    end
  end

  describe "#game_over?" do
    it "delegates to the board's #won? method" do
      expect(game.board).to receive(:won?)

      game.game_over?
    end
  end

  describe "#play_turn" do
    it "gets a move from the player and makes an attack at that position" do
      # :get play is a dummy (or mock) method within a dummy class Player, hence the allow()
      allow(player).to receive(:get_play).and_return([1, 1])

      expect(player).to receive(:get_play)
      expect(game).to receive(:attack).with([1, 1])

      game.play_turn
    end
  end
end
