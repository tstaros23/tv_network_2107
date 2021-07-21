require './lib/network'
require './lib/show'
require './lib/character'

RSpec.describe Network do
  it "exists" do
    nbc = Network.new("NBC")

    expect(nbc).to be_a(Network)
  end

  it "attributes" do
    nbc = Network.new("NBC")

    expect(nbc.name).to eq("NBC")
    expect(nbc.shows).to eq([])
  end

  it "has shows" do
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    nbc = Network.new("NBC")

    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)
    expect(nbc.shows).to eq([knight_rider, parks_and_rec])
  end

  it "has main characters" do
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    nbc = Network.new("NBC")

    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)
    
    expect(nbc.main_characters).to eq([kitt])
  end
end
