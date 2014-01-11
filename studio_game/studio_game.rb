#!/Users/jason/.rvm/rubies/ruby-1.9.3-p429/bin/ruby
require_relative 'game'
require_relative 'berserk_player'

berserker = BerserkPlayer.new("berserker", 50)
rounds = 2
knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")
knuckleheads.add_player(berserker)

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
knuckleheads.high_scores
knuckleheads.save_high_scores