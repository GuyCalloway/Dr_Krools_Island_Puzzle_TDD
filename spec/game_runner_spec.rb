# frozen_string_literal: true

require 'game_runner'
require 'environment_builder'

describe 'game logic' do
  before(:each) do
    env = Environment.new(2)
    @game = Game.new(env)
  end

  it 'initialized with line' do
    expect(@game.environment.line.length).to be(2)
  end

  it 'counts number of blue ahead of first in line' do
    @game.environment.line = %w[blue blue]
    number = @game.count('blue')
    expect(number).to eq(1)
  end

  it 'takes turn and removes person from line, and detects whether person to die or survive' do
    @game.environment.line = %w[blue blue]
    @game.take_turn('red')
    expect(@game.environment.line.length).to eq(1)
    expect(@game.deaths).to eq(1)
  end
end
