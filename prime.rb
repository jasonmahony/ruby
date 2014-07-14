#!/usr/bin/env ruby

#def prime(n)
#  primes = Array.new
#  case n
#  when 0..1
#    return false
#  else
#    2.upto(n - 1) do |i|
#      if num % i == 0
#        primes.push(i)
#      end
#    end
#    return primes
#  end
#end

def prime(n)
  primes = Array.new
  case n
  when 0..1
    return primes
#  when 2
#    return [2]
  else
    2.upto(n) do |i|
      if n % i == 0
        primes.push(i)
      end
    end
    return primes
  end
end

int = 11
print prime(int)