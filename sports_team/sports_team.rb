class SportsTeam

  attr_accessor(:coach)
  attr_reader(:team_name, :players, :points)

  def initialize(team_name, coach=nil)
    @team_name = team_name
    @players = []
    @coach = coach
    @points = 0
  end

  def add_array_of_players(new_players)
    for player in new_players
      @players.push(player)
    end
  end

  def add_single_player(new_player)
    @players.push(new_player)
  end

  def is_player_in_team?(player_name)
    for player in @players
      return true if player == player_name
    end
    return false
  end

  def points_awarded(outcome)
    case outcome
    when "win"
      @points += 3
    when "lose"
      @points -= 1
    when "draw"
      @points += 1
    end

  end

end
