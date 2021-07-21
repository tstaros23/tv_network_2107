class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    characters = @shows.map do |show|
      show.characters
      characters.sort_by do |character|
        character
        require "pry"; binding.pry
      end
    end


  end
end
