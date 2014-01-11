#!/Users/jason/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

name = ""

def say_hello(name)
  puts "I'm #{name}"
end

while name != "quit"
  puts "Enter the name and hit enter. Type 'quit' to exit"
  name = gets.chomp
  if name == "quit"
    break
  else
  say_hello(name)
  end
end
