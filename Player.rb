class Player

  attr_accessor :name :short_name :score

  def initialize (num)
    @name = "Player #{num}"
    @short_name = "P#{num}"
    @score = 3
  end

  def reduce
    @score -= 1
  end
  
end