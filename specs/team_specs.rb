require('minitest/autorun')
require_relative('../team.rb')

class TestTeam < Minitest::Test
  def setup()
    @team = Team.new("Glasgow", ["Paul", "Dave", "Bill"], "Roy")
  end

  def test_team_name

    assert_equal("Glasgow", @team.team_name)
  end

  def test_players

    assert_equal(["Paul", "Dave", "Bill"], @team.players)
    end
def test_coach

  assert_equal("Roy", @team.coach)

end
    def test_set_coach_name
      @team.coach = "Dave"
      assert_equal("Dave", @team.coach)
    end

    def test_add_player
      assert_equal(["Paul", "Dave", "Bill", "Ally"], @team.add_player("Ally"))
    end

    def test_player_name
      assert_equal(true, @team.player_name("Paul"))
    end

    def test_team_wins
      assert_equal(3, @team.points(true))
    end

    def test_team_loses
      assert_equal(0, @team.points(false))
    end
end
