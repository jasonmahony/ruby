#!/usr/bin/env ruby

def anagrams(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end

puts anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])
