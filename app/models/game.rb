class Game 
  include Neo4j::ActiveNode
  property :played_at, type: DateTime
  property :home_team, type: string
  property :visitor_team, type: string

  has_many :in, :teams, origin: :game
end
