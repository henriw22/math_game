require './Player'
require './Game'
require './Question'

players = []
player1 = Player.new('1')
player2 = Player.new('2')
players.push player1
players.push player2

# p players
# puts player1.name

game = Game.new(players)

while (!game.game_over?)
  puts "\n----- NEW TURN -----"

  # questions
  question = Question.new
  puts "#{game.turn.name}: #{question.question}" 

  # Check Answer
  answer = gets.chomp
  if question.check?(answer) 
    puts "#{game.turn.name}: YES! You are correct."
  else
    puts "#{game.turn.name}: Seriously? No!"
    # game.turn.score
    game.turn.lives -= 1
  end

  # Switch Player
  game.switch_turn

  # Output Current Scores
  game.current_score
end

puts "\n----- GAME OVER -----"
puts "#{game.turn.name} wins with a score of #{game.turn.lives}/3"
puts "Good bye!"