class SportsTeam

  def initialize(team_name, coach=nil, players=[])
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def get_team_name()
    return @team_name
  end

  def get_coach()
    return @coach
  end

  def get_players
    return @players
  end

end
