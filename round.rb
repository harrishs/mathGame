class Round
  attr_reader :p1Score, :p2Score
  def initialize(player, p1Score, p2Score)
    @player = player
    @p1Score = p1Score
    @p2Score = p2Score
  end
end