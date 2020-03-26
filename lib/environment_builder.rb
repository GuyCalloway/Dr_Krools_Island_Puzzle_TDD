# frozen_string_literal: true

class Environment
  attr_accessor :line, :turn

  def initialize(population)
    @line = assign_hats(Array.new(population + 1, 'no hat'))
    @turn = 0
  end

  def assign_hats(array)
    array.map do |_person|
      person = if rand(2) == 1
                 'blue'
               else
                 'red'
               end
    end
  end

  def counter(colour, number)
    count = 0

    return @line if colour == 'see all'

    @line[1..number].each do |x|
      count += 1 if x == colour
    end
    count
  end
end
