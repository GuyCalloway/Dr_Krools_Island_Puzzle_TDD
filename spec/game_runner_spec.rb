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
  
  it "takes turn and removes person from line, and detects whether person to die or survive" do 
    game = Game.new(2)
    game.environment.line = ['blue', 'blue']
    game.take_turn('red')
    expect(game.environment.line.length).to eq(1)
    expect(game.deaths).to eq(1)
    expect(game.survivors).to eq(1)
  end
end