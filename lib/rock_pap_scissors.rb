require "rock_pap_scissors/version"
require "Player"
require "Move"

module RockPapScissors
  class Game
    attr_accessor :human, :computer

    def initialize
      @human = Human.new
      @computer = Computer.new
    end

    def welcome_msg
      puts 'Welcome to Rock/Paper/Scissors'
    end

    def display_winner
      if human.move > computer.move
        puts "#{human} won!"
      elsif computer.move > human.move
        puts "#{computer} won!"
      else
        puts "It's a tie!"
      end
    end

    def play_again?
      puts "Do you want to play again ? (y/n)"
      ret = gets.chomp
      return true if ret == 'y'
    end

    #To kickstart the game - Game.new.play
    def play
      welcome_msg
      loop do
        human.choose
        computer.choose
        display_winner
        break if play_again? != true
      end
    end
  end
end
