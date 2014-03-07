#!/usr/bin/env ruby
require_relative 'game'
require_relative 'berserk_player'

berserker = BerserkPlayer.new("berserker", 50)
rounds = 2
game1 = StudioGame::game.new("Knuckleheads")
game1.load_players(ARGV.shift || "players.csv")
game1.add_player(berserker)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when "quit", "exit"
    knuckleheads.print_stats
    break
  else
     puts "Please enter a number or 'quit'"
  end
end
game1.high_scores
game1.save_high_scores
