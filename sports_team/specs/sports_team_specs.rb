require("minitest/autorun")
require_relative("../sports_team.rb")

class SportsTeamTest < MiniTest::Test

  def test_get_team_name
    new_team = SportsTeam.new("CodeClan")
    assert_equal("CodeClan",new_team.team_name())
  end

  def test_get_coach
    new_team = SportsTeam.new("CodeClan", "Stuart")
    assert_equal("Stuart",new_team.coach())
  end

  def test_get_coach__no_coach
    new_team = SportsTeam.new("CodeClan")
    assert_nil(new_team.coach())
  end

  def test_get_players
    players = ["Bob", "Jay", "Rachel"]
    new_team = SportsTeam.new("CodeClan", "Stuart")
    new_team.add_array_of_players(players)
    assert_equal(3,new_team.players().length())
  end

  def test_set_coach
    new_team = SportsTeam.new("CodeClan")
    new_team.coach = "Joe"
    assert_equal("Joe",new_team.coach())
  end

  def test_add_player_to_team
    new_team = SportsTeam.new("CodeClan")
    new_team.add_single_player("Greg")
    assert_equal(1,new_team.players().length())
  end

  def test_is_player_in_team__true
    new_team = SportsTeam.new("CodeClan")
    players = ["Bob", "Jay", "Rachel"]
    new_team.add_array_of_players(players)
    assert_equal(true,new_team.is_player_in_team?("Bob"))
  end

  def test_is_player_in_team__false
    new_team = SportsTeam.new("CodeClan")
    players = ["Bob", "Jay", "Rachel"]
    new_team.add_array_of_players(players)
    assert_equal(false,new_team.is_player_in_team?("Stuart"))
  end

  def test_team_won
    new_team = SportsTeam.new("CodeClan", "Jim")
    players = ["Bob", "Jay", "Rachel"]
    new_team.add_array_of_players(players)
    new_team.points_awarded("win")
    assert_equal(3, new_team.points())
  end
end
