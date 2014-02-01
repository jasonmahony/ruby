#!/usr/bin/env ruby

class Lover

  def initialize(name, health)
    @name = name.downcase
    @health = health
  end
  
  def to_s
    "Hi, I'm #{@name.capitalize} with a score of #{@health}"
  end

end

love = Lover.new("jUlIe", 10)

puts love.to_s
