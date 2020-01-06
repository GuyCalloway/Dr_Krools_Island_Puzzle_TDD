class Game
  attr_accessor :environment
  attr_reader :deaths, :survivors

  def initialize(environment)
    @environment = environment
    @deaths = 0
  end

  def count(color, number = @environment.line.length)
    return @environment.counter(color, number)
  end

  def take_turn(color)
    if @environment.line.length != 0 
      if @environment.line.shift != color.downcase
        @deaths += 1
      end
    end
  end

end