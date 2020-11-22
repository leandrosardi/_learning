require 'time'

t = Time.now()
puts "t:#{t.to_s}"
s = t.strftime("%Y-%m-%d")
puts "s:#{s.to_s}"
u = Date.strptime(s, "%Y-%m-%d").to_time
puts "u:#{u.to_s}"
t = (u + 24*60*60)
puts "t:#{t.to_s}"


puts 
t = Time.now()
puts "t:#{t.to_s}"
t = (Date.strptime(t.strftime("%Y-%m-%d"), "%Y-%m-%d").to_time + 24*60*60)
puts "t:#{t.to_s}"
