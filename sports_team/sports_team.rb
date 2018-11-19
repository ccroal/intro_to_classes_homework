class SportsTeam

  attr_accessor :coach, :points
  attr_reader :team_name, :players


  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def change_coach(new_coach)
  #   @coach = new_coach
  # end
  #
  def add_players(player)
    @players.push(player)
  end

  def does_player_exist(player)
    @players.include?(player)
    
  end

  # def add_points_for_win(result)
  #
  # end

end
