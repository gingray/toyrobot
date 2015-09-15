class Robot
  attr_accessor :position, :direction

  def initialize position, direction
    @position = position
    @direction = direction
  end

  def to_s
    "#{@position[:x]}, #{@position[:y]}, #{@direction}"
  end
end
