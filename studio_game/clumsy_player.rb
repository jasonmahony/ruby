#!/Users/jason/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

require_relative 'player'

class ClumsyPlayer < Player
  def found_treasure(treasure)
    damaged_treasure = Treasure.new(treasure.name, treasure.points / 2.0)
    super(damaged_treasure)
  end
  
end

if __FILE__ == $0
  clumsy = ClumsyPlayer.new("klutz")  
  
  hammer = Treasure.new(:hammer, 50)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  
  crowbar = Treasure.new(:crowbar, 400)
  clumsy.found_treasure(crowbar)
  
  clumsy.each_found_treasure do |treasure|
    puts "#{treasure.points} total #{treasure.name} points"
  end
  puts "#{clumsy.points} grand total points"
end
