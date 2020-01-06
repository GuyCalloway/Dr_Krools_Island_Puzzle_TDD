class Environment
  attr_reader :line

  def initialize(population)
    @line = Array.new(population, 'hair')
  end

  def assign_hats
     @line.map! do |person| 
                  if rand(2) == 1
                    person = 'blue'
                  else
                    person = 'red'
                  end
                end
  end
end