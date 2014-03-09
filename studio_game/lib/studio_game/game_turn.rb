#!/usr/bin/env ruby

require 'studio_game/die'
require 'studio_game/player'
require 'studio_game/treasure_trove'

module StudioGame
  module GameTurn
    attr_accessor :player
    
    def self.take_turn(player)
      die = Die.new
      case die.roll
      when 5..6
        player.w00t
      when 1..2
        player.blam
      else
        puts "neutral roll, #{player.name} was skipped."
      end
      
      treasure = TreasureTrove.random
      player.found_treasure(treasure)
    end
  end
end