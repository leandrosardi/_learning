require 'uri'
require 'cgi'
s = "I partner with companies to go from chance referrals & booked"
puts
puts s
puts
puts URI.escape(s)
puts
puts CGI.escape(s)