class Player 
  include Neo4j::ActiveNode
  property :first_name, type: String
  property :last_name, type: String

  has_one :out, :team, type: :play_for
  has_one :in, :statistic, type: :statistics_for

end
