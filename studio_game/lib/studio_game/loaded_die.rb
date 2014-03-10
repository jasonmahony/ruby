#!/usr/bin/env ruby

require_relative 'auditable'

module StudioGame
  class LoadedDie
    attr_reader :number
    
    def roll
      numbers = [1, 1, 2, 5, 6, 6]
      @number = numbers.sample
      audit
      @number
    end  
  end
end

if __FILE__ == $0
  puts LoadedDie.new
end