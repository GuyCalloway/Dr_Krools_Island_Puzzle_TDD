class Environment
  attr_reader :population

  def initialize
    @population = rand(200)
  end
end