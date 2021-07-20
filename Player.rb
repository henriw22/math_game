class Player

  attr_reader :name, :short_name, :lives

  def initialize (num)
    @name = "Player #{num}"
    @short_name = "P#{num}"
    @lives = 3
  end

  def score
    @lives -= 1
  end

end