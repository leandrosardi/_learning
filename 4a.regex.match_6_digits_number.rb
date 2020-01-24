s = "Si vous avez essayé de vous identifier :
Veuillez vous servir de ce code de vérification pour terminer votre identification : 332754
Si vous n’avez pas essayé de vous identifier, assurez-vous de changer votre mot de passe en cliquant sur le lien ci-dessous."

codes = s.scan(/([0-9][0-9][0-9][0-9][0-9][0-9])/).last
code = codes.last.to_s

puts codes.to_s
puts code.to_s 