#!/usr/bin/env ruby

# accepts a "word" and array of "words"
def anagrams(word, words)
  # returns anagrams of "word" found in array "words"
  words.select { |w| w.chars.sort == word.chars.sort }
end

puts anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])
