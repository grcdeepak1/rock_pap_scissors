class Player
  attr_accessor :name, :move
  def initialize
    set_name
  end

  def to_s
    name
  end
end

# Subclasses
class Human < Player
  def set_name
    puts 'Please enter your name'
    n = ''
    loop do
      n = gets.chomp
      break unless n.empty?
      puts 'Name is required to continue'
    end
    self.name = n
  end

  def choose
    puts "#{name}, Please select rock/paper/scissors"
    m = ''
    loop do
      m = gets.chomp
      break if Move::VALUES.include?(m)
      puts 'Please enter a valid string'
    end
    self.move = Move.new(m)
    puts "#{name} choose #{move}"
  end
end

class Computer < Player
  NAMES = ['R2D2', 'Chitti'].freeze

  def set_name
    self.name = NAMES.sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
    puts "#{name} choose #{move}"
  end
end