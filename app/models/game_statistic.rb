class GameStatistic 
  include Neo4j::ActiveNode
  
  has_many :in, :golas_in_game, origin: :game_statistic
  has_many :in, :cards_in_game, origin: :game_statistic
  has_many :in, :asists_in_game, origin: :game_statistic
  has_many :in, :substitutes_in_game, origin: :game_statistic
end
