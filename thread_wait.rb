#/usr/bin/env ruby

def wait_for_thread(threads)
  return nil if threads == []
  loop {threads.map {|t| return t unless t.alive?}}
end

threads = [ Thread.new { 0 } ]
sleep 1
wait_for_thread(threads)
