class Team 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :league, type: :play_in
  has_many :in, :players, origin: :team

  has_many :both, :followers, type: :following
  has_many :out, :following, type: :following
  has_many :in, :followed_by, type: :following

  # Another way how to write this "following" association!
  # [[:both, :followers], [:out, :following], [:in, :followed_by]].each do |dir, assoc|
  #   has_many dir, assoc, type: :following
  # end
  
end
