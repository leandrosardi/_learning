require 'watir-webdriver'
require 'blackstack_commons'

profile_id = '5d06aeb5-f47a-4dcc-b422-6e6090b5b0ac'
mla_url = "http://127.0.0.1:45000/api/v1/profile/start?automation=true&profileId=#{profile_id}"
auth_token = '10ad30072b06796cde7618c563f3a4e0c9aab32b'
mla_version = '4.4.4'


params = {
  'token' => auth_token,
  'mlaVersion' => mla_version,    
}

data = {
  :name => 'test22',
  :browser => 'mimic',
  :os => 'win',
  :network => {
    :proxy => {
      :type => 'HTTP',
      :host => '149.28.255.121',
      :port => '502',
      :username => '',
      :password => '', 
    }
  }
} 

url = "https://api.multiloginapp.com/v2/profile?token=10ad30072b06796cde7618c563f3a4e0c9aab32b&mlaVersion=4.5.1"

uri = URI(url)
Net::HTTP.start(uri.host, uri.port, :use_ssl => true, :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http|
  req = Net::HTTP::Post.new(uri)
  req['Content-Type'] = 'application/json'
#  req.set_form_data(params)
  req.body = data.to_json
  res = JSON.parse(http.request(req).body)
  
  puts res.to_s
  puts res['uuid']
end



url = URI.parse("https://api.multiloginapp.com/v1/profile/remove?token=10ad30072b06796cde7618c563f3a4e0c9aab32b&profileId=89ffa3e8-4632-4133-8561-a3725702c6a6")
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port, :use_ssl => true, :verify_mode => OpenSSL::SSL::VERIFY_NONE) {|http|
  http.request(req)
}
puts res.body
puts JSON.parse(res.body)['status']


=begin
uri = URI("https://api.multiloginapp.com/v2/profile") # &token=#{auth_token}&mlaversion=#{mla_version}
req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
req.set_form_data({
  :token => auth_token,
  :mlaversion => mla_version,    
})
req.body = data.to_json
options = {
  :use_ssl => true,
  :verify_mode => OpenSSL::SSL::VERIFY_NONE,
}
res = Net::HTTP.start(uri.hostname, uri.port, options) do |http|
  http.request(req)
end
puts res.body.to_s
=end


# headless.exe -port 45000
# http://127.0.0.1:45000/api/v1/profile/start?automation=true&profileId=b00b0714-ed7b-464b-a120-92a9db596216
# cli.exe -login -u leandro.sardi@expandedventure.com -p SantaClara123


=begin
url = 'http://127.0.0.1:17923'

driver = Selenium::WebDriver.for(:remote, :url => url, :desired_capabilities => nil)
browser = Watir::Browser.new(driver)

browser.goto 'http://linkedin.com/'

browser.close
=end