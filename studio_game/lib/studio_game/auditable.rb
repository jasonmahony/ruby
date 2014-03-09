#!/usr/bin/env ruby

require 'studio_game/die'

module StudioGame
  module Auditable
    def audit
      puts "Rolled a #{self.number} ({self.class})"          
    end  
  end
end