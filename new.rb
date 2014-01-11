#!/Users/jason/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

in_name = "jason"

def say_hello(input_name, input_health)
  "Hi, I'm #{input_name.capitalize} with a health of #{input_health}"
end

def calc_health(name)
  first = name[0].downcase
  (a..z).to_a.each do |n|
    if first == n
      puts n
    end 
  end
end

puts calc_health(in_name)

#puts say_hello(first, )

#while name != "quit"
#  puts "Enter the name and hit enter. Type 'quit' to exit"
#  name = gets.chomp
#  if name == "quit"
#    break
#  else
#  score = name.calc_health
#  puts say_hello(name, score)
#  puts name
#  end
#end

