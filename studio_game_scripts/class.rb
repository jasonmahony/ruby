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

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("CURLY", 125)

puts player1.name
puts player1.health
player1.name = "jasON"
puts player1.name
puts player1