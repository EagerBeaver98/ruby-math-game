require './players'
require './game'

puts "Player 1:"
p1 = Player.new(gets.chomp)

puts "Player 2:"
p2 = Player.new(gets.chomp)
game = Gametext.new(p1.name, p2.name)
puts game.start

round_count = 1

while p1.score > 0 && p2.score > 0
  p1_question = game.sum(p1.name)
  p2_question = game.sum(p2.name)
  puts "---ROUND #{round_count}---"
  puts p1_question[0]
  answer1 = gets.chomp
  if answer1.to_i != p1_question[1]
    p1.score -= 1
    puts "Incorrect, the correct answer was #{p1_question[1]}"
  else 
    puts "Correct"
  end
  puts p2_question[0]
  answer2 = gets.chomp
  if answer2.to_i != p2_question[1]
    p2.score -= 1
    puts "Incorrect, the correct answer was #{p2_question[1]}"
  else 
    puts "Correct"
  end
  round_count += 1
  puts "Lives Remaining: #{p1.name} #{p1.score}/3 #{p2.name} #{p2.score}/3"

end

puts "---GAME OVER---"
if p1.score < 1
  puts "#{p2.name} Wins!"
elsif p2.score < 1
  puts "#{p1.name} Wins!"
end