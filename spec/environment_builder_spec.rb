require 'environment_builder'

describe "creates hash of hat colours" do
 
  it "creates line of 0s(no color yet)" do
    environment = Environment.new(15)
    expect(environment.line).to be_truthy
  end

  it "assigns hats to line" do
    environment = Environment.new(15)
    expect(environment.line).not_to include('no hat')
  end
end