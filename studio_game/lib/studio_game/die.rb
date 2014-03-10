#!/usr/bin/env ruby

require_relative 'auditable'

module StudioGame
  class Die
    include Auditable

    attr_reader :number
  
    def roll
      @number = rand(1..6)
      audit
      @number
    end 
  end
end

if __FILE__ == $0
  puts Die.new
end