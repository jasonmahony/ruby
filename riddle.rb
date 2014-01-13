#!/Users/jason/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

text = nil

def give_score(text, score)
  "Your score is #{score}."
end

def calc_score(text)
  f_char = text[0].downcase
  letters = ('a'..'z').to_a
  numbers = (1..26).to_a
  hash = Hash[letters.zip numbers]
  hash[f_char]  
end

def generate(size = 15)
  chars = [*('A'..'Z'), *('a'..'z')]
  (0...size).map{ chars.to_a[rand(chars.size)] }.join
end

puts "^^^^^^^^^^^^^^^^^^^^^^^\nWelcome to \"The Riddle\"\n^^^^^^^^^^^^^^^^^^^^^^^"

while text != ""
  puts "\nWrite some text to play. Hit Enter (and nothing else) to exit.\n\n"
  text = gets.chomp
  if text == ""
    break
  else
    puts "\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "^^^^^^  #{give_score(text, calc_score(text))}  ^^^^^"
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "\nType 'yes' to solve the riddle of how your score is generated. Hit Enter to keep playing."
    rand_text = generate
    ready = gets.chomp
    if ready  == "yes"
      score = calc_score(rand_text) 
      puts "\nWhat is the score of the following text '#{rand_text}'\?"
      answer = gets.chomp.to_i
      if answer == calc_score(rand_text)
        puts "\nNice work!! You win!"
      else
        puts "\nSooooorry..."
      end
      break
    end
    puts "\nOK, still trying..."
  end
end

