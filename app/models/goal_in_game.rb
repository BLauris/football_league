class GoalInGame 
  include Neo4j::ActiveNode

  has_one :out, :game_statistic, type: :goals
end
