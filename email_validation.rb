#!/usr/bin/env ruby

def evalidate(email)
  retun false if email !~ /\@/
  nameDomain = email.split('@')
  return false unless nameDomain.size == 2
  validRootDomains = [com, net, ca, biz]
  if nameDomain[1].split(".").last.any? { |domain| validRootDomains.include? domain }
    return true
  else
    return false  
  end
end

puts evalidate("jason.mahony@gmail.com")
puts evalidate("notreal.net")
puts evalidate("jason.mahony@gmail.dude.ca")
pust evalidate("noway")