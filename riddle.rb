#!/usr/bin/env ruby

class Text

  def initialize(text)
    @text = text
    @coder = Hash[('a'..'z').to_a.zip (1..26).to_a]
  end

  def calc_score
    f_char = @text[0].downcase
    @coder[f_char]  
  end

  def print
    @text
  end

end
 
def formatting(input)
  puts "^".center(60, "^")
  puts input.center(60, " ")
  puts "^".center(60, "^")
end
  
def generate(size = 15)
  chars = [*('A'..'Z'), *('a'..'z')]
  (0...size).map{ chars.to_a[rand(chars.size)] }.join
end

puts formatting("Welcome to \"The Riddle\"")

loop do
  puts "Write some text to play. Hit 'q' to exit.\n"
  input = Text.new(gets.chomp)
  if input.print == "q"
    break
  else
    puts formatting("Your score is #{input.calc_score}.")
    puts "Can you guess why? Hit 'y' to solve!"
    puts "\nHit Enter to keep playing."
    rand_text = Text.new(generate)
    ready = Text.new(gets.chomp)
    if ready.print  == "y"
      score = input.calc_score
      puts "\nWhat is the score of the following text '#{rand_text.print}'\?"
      answer = gets.chomp.to_i
      if answer == rand_text.calc_score
        puts formatting("Nice work!! You win!")
      else
        puts "\nSooooorry..."
      end
      break
    else
      puts "\nOK, still trying..."
    end
  end
end
