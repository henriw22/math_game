
class Game
  attr_reader :player, :turn, :game_over

  def initialize (players)
    @players = players
    @turn= @players[0]
    @game_over = false
  end

  def switch_turn
    if turn == player[0] then turn = player [1]
    else turn = player[0]
    end
  end

  def game_over?
    @players.each {|player|
    if player.lives == 0 then @game_over = true
    end
    @game_over
    }
  end

  def final_score
    puts "#{@players[0].short_name}: #{@players[0].lives}/3 vs #{@players[1].short_name}: #{@players[1].lives}/3"
  end

end