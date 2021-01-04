class Gametext
  attr_reader :start
  def initialize(player1, player2)
    @start = "Match: #{player1} VS #{player2}"
  end
  def sum(player)
    x = rand(1..10)
    y = rand(1..10)
    sum = x + y
    return ["#{player} what is #{x} + #{y}?", sum]
  end
end