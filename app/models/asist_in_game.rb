class AsistInGame 
  include Neo4j::ActiveNode

  has_one :out, :game_statistic, type: :asists
end
