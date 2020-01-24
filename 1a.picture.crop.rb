require 'mini_magick'

#Dir.chdir(ARGV[0])

Dir.glob("*.jpg").each do |s|
  next if File.directory? s 
  print s.to_s + "... "
  image = MiniMagick::Image.open(s)

  w_original = image[:width].to_f
  h_original = image[:height].to_f

  print "(#{w_original.to_s},#{h_original.to_s}) "

  if w_original > 250
    print "crop "
    image.crop('200x800+0+0')
  end

  image.write(s)
  puts "done"  
end
