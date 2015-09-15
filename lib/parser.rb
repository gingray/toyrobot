class Parser
  TERMINALS = ['place', 'move', 'left', 'right', 'report']
  DIRECTIONS = ['north', 'south', 'west', 'east']

  attr_accessor :tokens, :pos, :robot, :field

  def initialize
    @pos = 0
  end

  def process str
    tokenize str
    while @tokens.count - 1 > @pos
      send @tokens[@pos]
    end
  end

  def tokenize str
    str = str.downcase
    @tokens = str.split /[\s,]+/
  end

  def place
    pos_x = next_token.to_i
    pos_y = next_token.to_i
    direction = next_token.to_sym
    @robot = Robot.new({ x: pos_x, y: pos_y }, direction)
    @field = Field.new robot
  end

  def next_token
    @pos+= 1
    @tokens[@pos]
  end
end
