require_relative './environment_builder'

class Game
  attr_accessor :environment

  def initialize(x)
    @environment = Environment.new(x)
    @deaths = 0
    @survivors = x
  end

  def count(color)
    return @environment.counter(color)
  end

  def take_turn(color)
    if @environment.line.length != 0 
      if @environment.line.shift != x.downcase
        @deaths += 1
        @survivors -= 1
      end
    end
  end

end