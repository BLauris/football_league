class Team 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :league, type: :play_in, model_class: League
  has_many :in, :players, origin: :team

  [[:both, :followers], [:out, :following], [:in, :followed_by]].each do |dir, assoc|
    has_many dir, assoc, type: :following, model_class: 'Team'
  end
  
end
