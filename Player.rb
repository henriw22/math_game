class Player

  attr_reader :name, :short_name, :lives
  attr_writer :lives
  def initialize (num)
    @name = "Player #{num}"
    @short_name = "P#{num}"
    @lives = 3
  end

  # def score
  #   @lives -= 1
  # end

end

# player1 = Player.new('1')
# player1.lives -= 1
# p player1.lives