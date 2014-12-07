#!/usr/bin/env ruby

# Returns threads that have finishes
def wait_for_thread(threads)
  return nil if threads == []
  # Wait for thread to finish before returning thread
  loop {threads.map {|t| return t unless t.alive?}}
end

threads = [ Thread.new { 0 } ]
sleep 1
puts wait_for_thread(threads)
