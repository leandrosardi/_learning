require 'net/http'
require 'uri'
require 'openssl'
#require 'websocket'
#require 'json'


print 'Right URL... '
pic_url = 'https://connectionsphere.com:443/clients/B1D94DDD-D9FA-4BB3-AD6A-9B65AB161295/mac-stock-pictures/andrea.beltran@virgipx.xyz.jpg'
uri = URI(pic_url)
request = Net::HTTP.new(uri.host, uri.port)
request.use_ssl = true
response = request.request_head(uri.path)
puts "response: #{response.code.to_s}"

print 'Wrong URL... '
pic_url = 'https://connectionsphere.com:443/clients/B1D94DDD-D9FA-4BB3-AD6A-9B65AB161295/mac-stock-pictures/andrea.beltran@virgipx.xyz.jpg.not_exists'
uri = URI(pic_url)
request = Net::HTTP.new(uri.host, uri.port)
request.use_ssl = true
response = request.request_head(uri.path)
puts "response: #{response.code.to_s}"
