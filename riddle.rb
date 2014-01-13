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
  puts "\nWrite some text. Hit Enter (and nothing else) to exit."
  text = gets.chomp
  if text == ""
    break
  else
    puts "\n\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "^^^^^^  #{give_score(text, calc_score(text))}  ^^^^^^"
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "\nType 'yes' to solve the riddle. Hit Enter to continue."
    rand_text = generate
    ready = gets.chomp
    if ready  == "yes"
      score = calc_score(rand_text) 
      puts "\nWhat is the score of the following text '#{rand_text}'\?"
      answer = gets.chomp.to_i
      if answer == calc_score(rand_text)
        puts "\nNice work! You win!"
      else
        puts "\nSooooory..."
      end
      break
    end
  end
end

