class Gametext
  attr_reader :start
  def initialize(player1, player2)
    @start = "Match: #{player1} VS #{player2}"
  end
end