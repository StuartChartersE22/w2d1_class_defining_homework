class SportsTeam

  def initialize(team_name, players=[], coach=nil)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def get_team_name()
    return @team_name
  end

end
