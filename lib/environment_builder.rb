class Environment
  attr_reader :line

  def initialize(population)
    @line = assign_hats(Array.new(population, 'no hat'))
  end

  def assign_hats(array)
     array.map do |person| 
                  if rand(2) == 1
                    person = 'blue'
                  else
                    person = 'red'
                  end
                end
  end
end