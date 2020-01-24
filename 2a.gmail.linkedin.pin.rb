require 'gmail'
gmail = Gmail.connect('mgi.copernico@expandedventure.com', 'SantaClara123')
filter = "to:tom.arvidsson@muralisankar.xyz AND from:security-noreply@linkedin.com after:#{Time.now.strftime("%Y/%m/%d")} in:anywhere"
email = gmail.inbox.emails(gm: filter).reverse.first
body = email.text_part.body.to_s
codes = body.scan(/([0-9][0-9][0-9][0-9][0-9][0-9])/).first
code = codes.first.to_s
puts codes.to_s
puts code.to_s 