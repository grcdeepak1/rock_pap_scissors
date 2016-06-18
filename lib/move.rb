class Move
  attr_reader :value
  VALUES = ['rock', 'paper', 'scissors'].freeze
  def initialize(value)
    @value = value
  end

  def to_s
    value
  end

  def rock?
    value == 'rock'
  end

  def paper?
    value == 'paper'
  end

  def scissors?
    value == 'scissors'
  end

  def >(other_move)
    (value == 'rock' && other_move.scissors?) ||
      (value == 'paper' && other_move.rock?) ||
      (value == 'scissors' && other_move.paper?)
  end
end