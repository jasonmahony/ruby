#!/Users/jason/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

text = ""

def give_score(text, score)
  "Your score is #{score}."
end

def calc_score(f_letter)
  letters = ('a'..'z').to_a
  numbers = (1..26).to_a
  hash = Hash[letters.zip numbers]
  hash[f_letter]  
end

puts "^^^^^^^^^^^^^^^^^^^^^^^\nWelcome to \"The Riddle\"\n^^^^^^^^^^^^^^^^^^^^^^^"

while text != "quit"
  puts "\n\nEnter some text and hit enter. Type 'quit' or hit Enter to exit"
  text = gets.chomp
  if text == "quit"
    break
  elsif text == ""
    break
  else
    first = text[0].downcase
    puts "\n\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "^^^^^^  #{give_score(text, calc_score(first))}  ^^^^^^"
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "\nCan you guess why the reason for your score?"
    puts "\nType 'yes' if you want to try and guess the riddle. To get more clues just hit Enter"
    ready = gets.chomp
    if ready  == "yes"
      puts "\nWhat is the score of the following text 'wzulskdjk kdsfkj zomem alajkd'\?"
      answer = gets.chomp.to_i
      if answer == 23
        puts "\nNice work! You win!"
      else
        puts "\nSooooory"
      end
      break
    end
  end
end

