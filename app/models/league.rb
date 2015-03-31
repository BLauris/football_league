class League 
  include Neo4j::ActiveNode
  property :name, type: String
  property :country, type: String
  property :rank, type: Integer

  has_many :in, :teams, origin: :league
end
