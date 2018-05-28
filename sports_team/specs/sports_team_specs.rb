require("minitest/autorun")
require_relative("../sports_team.rb")

class SportsTeamTest < MiniTest::Test

  def test_get_team_name
    new_team = SportsTeam.new("CodeClan")
    assert_equal("CodeClan",new_team.get_team_name())
  end

end
