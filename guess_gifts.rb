#!/usr/bin/env ruby

def guess_gifts(wishlist, presents)
  gifts = Array.new
  presents.each do |p|
    wishlist.each do |w|
      if w[:size] == p[:size] && w[:clatters] == p[:clatters] && w[:weight] == p[:weight]
        gifts.push(w[:name])
      end
    end
  end
  gifts.uniq
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