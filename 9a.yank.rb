i = 125
while i>=1
  s = "gem yank bots -v 1.1.#{i.to_s} >nil"

  print "#{s}... "
  if system(s)
    puts 'done'
  else
    puts 'error'
    exit
  end
    
  print 'sleep... '
  sleep(15)
  puts 'done'
  
  i = i - 1
end