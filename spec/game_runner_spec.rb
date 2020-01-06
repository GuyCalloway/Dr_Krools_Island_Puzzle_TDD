require 'game_runner'

describe "initialize game" do
 
  it "initialized with line" do
    game = Game.new(5)
    puts game
    expect(game.environment.line.length).to be(5)
  end
  
  it "counts number of blue ahead of first in line" do
    game = Game.new(5)
    game.environment.line = ['blue', 'blue']
    number = game.count('blue')
    expect(number).to eq(1)
  end
  
end