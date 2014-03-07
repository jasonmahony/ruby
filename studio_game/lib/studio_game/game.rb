#!/usr/bin/env ruby
require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

module StudioGame
  class Game
    attr_reader :title
    attr_accessor :players
    def initialize(title)
      @title = title
      @players = []
    end
    def add_player(player)
      @players << player
    end
    def load_players(from_file)
      File.readlines(from_file).each do |line|
        add_player(Player.from_csv(line))
      end
    end  
    def play(rounds)
      treasures = TreasureTrove::TREASURES
      puts "There are #{treasures.length} treasures to be found:"
      treasures.each do |t|
        puts "A #{t.name} is worth #{t.points}"
      end  
      puts "\nThere are #{@players.length} players in #{@title}:" 
      1.upto(rounds) do |r|
        if block_given?
          break if yield
        end
        puts "\nRound: #{r}"
        @players.each do |p|
          GameTurn.take_turn(p)
        end
      end
    end
    def print_stats()
      puts "\n#{@title} Statistics"
      strong, wimpy = @players.partition { |p| p.strong? }
      puts "#{strong.size} strong players:"
      strong.each { |p| print_name_and_health(p) }
      puts "#{wimpy.size} wimpy players:"
      wimpy.each { |p| print_name_and_health(p) }
      @players.each do |player|
        puts "\n#{player.name} point totals:"
        player.each_found_treasure do |treasure|
          puts "#{treasure.points} total #{treasure.name} points"
        end
        puts "#{player.points} grand total points"
      end
    end
    def print_name_and_health(player)
      puts "#{player.name} (#{player.health})"
    end 
    def high_score_entry(player)
        formatted_name = player.name.ljust(20, '.')
        "#{formatted_name} #{player.score}"
    end
    def high_scores()
      puts "\n#{@title} High Scores:"
      @players.sort.each do |player|
        puts high_score_entry(player)
      end
      @players.sort.each do |player|
        puts "\n#{player.name} points totals:"
        puts "#{player.points} grand total points"
      end
      puts "\n#{total_points} total points from treasures found"
    end
    def save_high_scores(out_file="high_scores.txt")
      File.open(out_file, 'w') do |file|
        file.puts ("#{@title} High Scores:\n")
        @players.sort.each do |player|
          file.puts high_score_entry(player)
        end
      end
    end
    def total_points()
      @players.reduce(0) { |sum, player| sum + player.points }
    end
  end
end

if __FILE__ == $0
  knuckleheads = Game.new("Knuckleheads")
  knuckleheads.add_player(Player.new("nerling"))
  knuckleheads.play(100) do
    knuckleheads.total_points >= 2000
  end
  knuckleheads.print_stats
  knuckleheads.high_scores
end
