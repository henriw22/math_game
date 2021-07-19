require './Player'

class Game
  attr_reader :player, :turn, :game_over :questions

  def initialize (players)
    @players = players
    @turn= @players[0]
    @game_over = false
    num1 = (1..20).to_a.sample
    num2 = (1..20).to_a.sample
    @answer = num1 + num2
    @question = "What does #{num1} plus #{num2} equal?"
  end

  def check_answer?(answer)
    answer == @answer
  end

  def switch_player
    if turn_player = 0
      @turn_player = 1
    else turn_player = 0
  end

  def player_alive
    if @players[@turn_player].lives == 0
      false
  end

  start_game
  end_game
  

end

