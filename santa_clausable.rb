#!/usr/bin/env ruby

class SantaClaus
    def say_ho_ho_ho
        # Ho Ho Ho!
    end

    def distribute_gifts
        # Gifts for all!
    end

    def go_down_the_chimney
        # Whoosh!
    end
end

class NotSantaClaus
    def say_ho_ho_ho
    end
end

def is_santa_clausable(obj)
  methods = [:say_ho_ho_ho, :distribute_gifts, :go_down_the_chimney]
  methods.all? { |m| obj.respond_to? m}
end

puts is_santa_clausable(SantaClaus.new) # should return true
puts is_santa_clausable(NotSantaClaus.new) # should return false