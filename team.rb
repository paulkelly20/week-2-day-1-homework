class Team
  attr_accessor :team_name, :players, :coach
  attr_writer :team_name, :players, :coach

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
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
# def set_coach_name(name)
#   @coach = name
# end

def add_player(name)
  @players.push(name)
end

def player_name(name)
  return @players.include?(name)

end

def points(result)
  if result == true
    @points += 3
  else  result == false
    @points += 0
  end
end

end
