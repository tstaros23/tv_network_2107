class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creater, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    salarys = @characters.map do |character|
      character.salary
      end
    salarys.sum do |salary|
        salary
    end
  end
end
