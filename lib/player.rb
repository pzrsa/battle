class Player
  attr_reader :name
  attr_accessor :points

  def initialize(name)
    @name = name
    @points = 50
  end

  def receive_damage
    @points -= 10
  end
end
