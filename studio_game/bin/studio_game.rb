#!/usr/bin/env ruby

require_relative '../lib/studio_game/game'
require_relative '../lib/studio_game/clumsy_player'
require_relative '../lib/studio_game/berserk_player'

berserker = BerserkPlayer.new("berserker", 50)
rounds = 2
game = StudioGame::game.new("Knuckleheads")
default_player_file = File.join(File.dirname(__FILE__), 'players.csv')
game.load_players(ARGV.shift || default_player_file)
game.add_player(berserker)

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
game.high_scores
game.save_high_scores
