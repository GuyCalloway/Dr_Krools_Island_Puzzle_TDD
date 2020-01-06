require 'environment_builder'

class Run_game
  attr_reader :environment

  def initialize
    @environment = Environment.new(15)
  end
end