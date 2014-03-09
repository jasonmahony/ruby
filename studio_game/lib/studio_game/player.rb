#!/usr/bin/env ruby

require 'studio_game/playable'
require 'studio_game/Game'

module StudioGame
  class Player
    include Playable
    attr_accessor :name
    attr_reader :health
    def initialize(name, health=150)
      @name = name.capitalize
      @health = health
      @found_treasures = Hash.new(0)
    end
    def to_s
      "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}."
    end  
    def name=(new_name)
      @name = new_name.capitalize
    end
    def score()
      @health + points
    end
    def <=>(other)
      other.score <=> score
    end
    def found_treasure(treasure)
      @found_treasures[treasure.name] += treasure.points
      puts "#{@name} found a #{treasure.name} worth #{treasure.points} points"
      puts "#{@name}'s treasures: #{@found_treasures}"    
    end  
    def points()
      @found_treasures.values.reduce(0, :+)
    end
    def each_found_treasure
      @found_treasures.each do |name, points|
        yield Treasure.new(name, points)
      end
    end
    def self.from_csv(string)
      name, health = string.split(',')    
      Player.new(name, Integer(health))
    end
  end
end


if __FILE__ == $0
  player1 = Player.new("Beavis")
  player2 = Player.new("Butthead")
  puts "#{player1} \n#{player2}"
#  gold = Treasure.new(:gold, 500)
#  player1.found_treasure(gold)
#  puts "#{player1.name} struck #{gold.name} worth #{gold.points} points"
end
