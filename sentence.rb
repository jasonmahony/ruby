#!/usr/bin/env ruby

def make_sentence parts
  if parts[0] == "," || parts[0] == "."
    make_sentence(parts[1..-1])
  else    
    sentence = Array.new
    parts.each do |word|
      if word == ","
        sentence = sentence.push(sentence.pop.chars.slice(0..-2).join).push(", ")
      elsif word == "."
      else
        sentence = sentence.push("#{word} ")
      end
    end
  end
  puts sentence.push(sentence.pop.chars.slice(0..-2).join).push('.').join

end

def make_sentence2 parts
  puts parts.join(' ').gsub(/\s[,.]/," ," => ",", " ." => "") << "."
end

make_sentence(['.', ',', 'hello', ',', '.', 'my', 'dear'])
