require './player'
require './problem'

class Game
  attr_accessor :p1, :p2, :problem

  def initialize (p1, p2, a, b)
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
    @problem = Problem.new(a, b)
  end

  def start_game
    while !@p1.dead? && !@p2.dead?
      puts "---- NEW TURN ----"
      puts "P1 your question is"

      if !problem.problem
        @p1.kill
      end

      puts "P1: #{@p1.life}/3 vs. P2: #{@p2.life}/3"
      puts "---- NEW TURN ----"
      puts "P2 your question is"

      if !problem.problem
        @p2.kill
      end

      puts "P1: #{@p1.life}/3 vs. P2: #{@p2.life}/3"
    end

    if @p1.life > @p2.life
      puts "Player 1 wins with a score of #{@p1.life}/3"
    else
      puts "Player 2 wins with a score of #{@p2.life}/3"
    end
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end
end

newGame = Game.new("player1", "player2", 1, 20)

newGame.start_game
