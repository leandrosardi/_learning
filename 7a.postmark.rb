require "postmark"

POSTMARK_API_TOKEN = '1499e037-91e9-4f03-b563-3222458a7939'

sender_name = 'Lori Lavoie'
sender_email = 'lori.lavoie@86janetrmedellin.xyz'
sender_domain = '86janetrmedellin.xyz'

# create the postmark client
client_postmark = Postmark::AccountApiClient.new(POSTMARK_API_TOKEN, secure: true)


# create a new signature
=begin
puts ''
puts client_postmark.create_sender(name: sender_name, from_email: sender_email)	
=end

# list signatures
# more info: https://github.com/wildbit/postmark-gem/wiki/Senders
=begin
puts ''
puts "size:#{client_postmark.signatures.size}:."
#client_list = client_postmark.get_signatures(offset: 0, count: 100)
client_postmark.signatures.select { |sign| sign[:domain]==sender_domain }.sort_by { |sign| sign[:domain] }.each do |sign|
	puts "#{sign[:domain]}, #{sign[:email_address]}, #{sign[:id]}"
end
=end


# get signature
# this other approach is a bit more scalable, but anyway we need to call the API 
# with filering by the domain.
# 
puts ''
pagesize = 30
i = 0
j = 1
sign = nil
while j>0 && sign.nil?
puts i.to_s
	buff = client_postmark.get_signatures(offset: i, count: pagesize)
puts buff.map { |s| s[:domain] }.join("\r\n")
	j = buff.size
	i += pagesize
	sign = buff.select { |s| s[:domain]==sender_domain }.first
end # while
