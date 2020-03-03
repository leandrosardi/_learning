require 'net/http'
require 'uri'
#require 'websocket'
#require 'json'

pic_url = 'https://connectionsphere.com:443/clients/B1D94DDD-D9FA-4BB3-AD6A-9B65AB161295/mac-stock-pictures/andrea.beltran@virgipx.xyz.jpg'
uri = URI(pic_url)
request = Net::HTTP.new uri.host
response= request.request_head uri.path
raise "Picture file not exists (#{pic_url.to_s} -> #{response.code.to_s})" if response.code.to_i != 200
