class SubstituteInGame 
  include Neo4j::ActiveNode

  has_one :out, :game_statistic, type: :substitutes
end
