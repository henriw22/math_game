
class Game
  attr_reader :players, :turn, :game_over

  def initialize (players)
    @players = players
    @turn= @players[0]
    @game_over = false
  end

  def switch_turn
    if @turn == @players[0] 
      @turn = @players[1]
    else 
      @turn = @players[0]
    end
  end

  def game_over?
    @players.each do |player|
      @game_over = true if player.lives == 0 
    end
    @game_over
  end

  def current_score
    puts "#{@players[0].short_name}: #{@players[0].lives}/3 vs #{@players[1].short_name}: #{@players[1].lives}/3"
  end

end