require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < Minitest::Test

  def setup()
    @team1 = SportsTeam.new("Hawks", ["Steven", "Phil", "Graeme"], "David", 0)
  end

  def test_team_has_name()
    team_name = @team1.team_name()
    assert_equal("Hawks", team_name)
  end

  def test_team_has_players()
    players = @team1.players()
    assert_equal(["Steven", "Phil", "Graeme"], players)
  end

  def test_team_has_coach()
    coach = @team1.coach()
    assert_equal("David", coach)
  end

  def test_change_coach()
    @team1.coach = ("Susan")
    assert_equal("Susan", @team1.coach())
  end

  def test_add_players()
    @team1.add_players("Sarah")
    assert_equal(4, @team1.players.count())
  end

  def test_does_player_exist()
    @team1.does_player_exist("Steven")
    assert_equal(true, @team1.players.include?())
  end

  # def test_add_points_for_win()
  #   @team1.add_points_for_win("win")
  #   assert_equal(2, @team1.points)
  # end
end
