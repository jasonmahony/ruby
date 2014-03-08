#!/usr/bin/env ruby

require_relative "die"

module StudioGame
  module Auditable
    def audit
      puts "Rolled a #{self.number} ({self.class})"          
    end  
  end
end