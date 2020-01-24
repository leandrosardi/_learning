require 'mini_magick'

#Dir.chdir(ARGV[0])

Dir.glob("*.jpg").each do |s|
  next if File.directory? s 
  print s.to_s + "... "
  image = MiniMagick::Image.open(s)
  image.flip
  image.rotate(-180)
  image.write(s)
  puts "done"  
end
