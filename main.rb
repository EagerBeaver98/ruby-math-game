require './players'
require './game-text'

puts "Player 1:"
p1 = Player.new(gets)

puts "Player 2:"
p2 = Player.new(gets)
start = Gametext.new(p1.name, p2.name)
puts start.start