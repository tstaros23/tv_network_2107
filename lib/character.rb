class Character
  attr_reader :name, :actor, :salary
  def initialize(actor_info)
    @name = actor_info[:name]
    @actor = actor_info[:actor]
    @salary = actor_info[:salary]
  end
end
