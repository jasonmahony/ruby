#!/usr/bin/env ruby

class Player
  attr_reader :health
  attr_accessor :name
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  def name=(new_name)
    @name = new_name.capitalize
  end
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
  def w00t
    @health = @health + 15
    puts "#{@name} got w00ted"
  end
  def blam
    @health -= 10
    puts "#{@name} got blammed"
  end
  def score
    @health + @name.length
  end
end

class Game
  attr_reader :title
  attr_accessor :players
  def initialize(title)
    @title = title
    @players = []
  end
  def add_player(player)
    @players << player
  end
  def play
    puts "There are #{@players.size} players in #{@title}:"
    @players.each {|player| puts player}
    @players.each do |player|
      2.times {player.w00t; player.blam}
      puts player
    end
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("CURLY", 125)

#puts player1.name
#puts player1.health
#player1.name = "jasON"
#puts player1.name
#puts player1
#
#knuckleheads = Game.new("Knuckleheads")
#knuckleheads.add_player(player1)
#knuckleheads.add_player(player2)
#knuckleheads.add_player(player3)
#knuckleheads.play

duds = Game.new("Duds")
dudes_in_duds = [Player.new("jack"), Player.new("speedo"), Player.new("ranchman") ]
dudes_in_duds.each { |dude| duds.add_player(dude) }
duds.play