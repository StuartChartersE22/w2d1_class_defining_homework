class SportsTeam

  attr_accessor(:coach)
  attr_reader(:team_name, :players)

  def initialize(team_name, coach=nil, players=[])
    @team_name = team_name
    @players = players
    @coach = coach
  end

end
