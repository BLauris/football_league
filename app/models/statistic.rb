class Statistic 
  include Neo4j::ActiveNode
  property :goals, type: Integer
  property :passes, type: Integer
  property :apearances, type: Integer
  property :minutes_played, type: integer

  has_one :out, :player, type: :statistics_for
end
