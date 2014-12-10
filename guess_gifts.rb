#!/usr/bin/env ruby

def guess_gifts(wishlist, presents)
  gifts = Array.new
  presents.each do |pres_hsh|
    gifts = wishlist.select do |wish_hsh|
      wish_hsh[:size] == pres_hsh[:size] && wish_hsh[:clatters] == pres_hsh[:clatters] && wish_hsh[:weight] == pres_hsh[:weight]
    end
  end
  return gifts
#  return gifts.map { |gift| gift[:name] }
end

wishlist = [
    {:name => "mini puzzle", :size => "small", :clatters => "yes", :weight => "light"},
    {:name => "toy car", :size => "medium", :clatters => "a bit", :weight => "medium"},
    {:name => "card game", :size => "small", :clatters => "no", :weight => "light"}
]

presents = [
    {:size => "medium", :clatters => "a bit", :weight => "medium"},
    {:size => "small", :clatters => "yes", :weight => "light"}
]

puts guess_gifts(wishlist, presents) # must return ['toy car', 'mini puzzle']