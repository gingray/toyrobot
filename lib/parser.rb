class Parser
  TERMINALS = ['PLACE', 'MOVE', 'LEFT', 'RIGHT', 'REPORT']
  DIRECTIONS = ['north', 'south', 'west', 'east']

  attr_accessor :tokens, :pos

  def initialize
    @pos = 0
  end

  def input str
    str = str.downcase
    @tokens = str.split /[\s,]+/
  end
end
