#!/usr/bin/env ruby

module StudioGame
  class Die
    attr_reader :number
  
    def roll
      @number = rand(1..6)
    end 
  end
end