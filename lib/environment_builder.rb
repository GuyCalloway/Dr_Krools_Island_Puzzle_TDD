class Environment
  attr_accessor :line, :turn

  def initialize(population)
    @line = assign_hats(Array.new(population, 'no hat'))
    @turn = 0
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

  def counter(input)
    count = 0
    @line[1..@line.length].each { |x| if x == input
                       count += 1
                     end
                }
    return count
  end
end